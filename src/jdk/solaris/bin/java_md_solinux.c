/*
 * Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */

#include "java.h"
#include "jvm_md.h"
#include <dirent.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/types.h>
#include "manifest_info.h"
#include "version_comp.h"


#define JVM_DLL "libjvm.so"
#define JAVA_DLL "libjava.so"
#define LD_LIBRARY_PATH "LD_LIBRARY_PATH"

/* help jettison the LD_LIBRARY_PATH settings in the future */
#ifndef SETENV_REQUIRED
#define SETENV_REQUIRED
#endif
/*
 * If a processor / os combination has the ability to run binaries of
 * two data models and cohabitation of jre/jdk bits with both data
 * models is supported, then DUAL_MODE is defined.  When DUAL_MODE is
 * defined, the architecture names for the narrow and wide version of
 * the architecture are defined in LIBARCH64NAME and LIBARCH32NAME.
 * Currently  only Solaris on sparc/sparcv9 and i586/amd64 is DUAL_MODE;
 * linux i586/amd64 could be defined as DUAL_MODE but that is not the
 * current policy.
 */

#ifdef __solaris__
#  define DUAL_MODE
#  ifndef LIBARCH32NAME
#    error "The macro LIBARCH32NAME was not defined on the compile line"
#  endif
#  ifndef LIBARCH64NAME
#    error "The macro LIBARCH64NAME was not defined on the compile line"
#  endif
#  include <sys/systeminfo.h>
#  include <sys/elf.h>
#  include <stdio.h>
#endif

/*
 * Flowchart of launcher execs and options processing on unix
 *
 * The selection of the proper vm shared library to open depends on
 * several classes of command line options, including vm "flavor"
 * options (-client, -server) and the data model options, -d32  and
 * -d64, as well as a version specification which may have come from
 * the command line or from the manifest of an executable jar file.
 * The vm selection options are not passed to the running
 * virtual machine; they must be screened out by the launcher.
 *
 * The version specification (if any) is processed first by the
 * platform independent routine SelectVersion.  This may result in
 * the exec of the specified launcher version.
 *
 * Previously the launcher modified the LD_LIBRARY_PATH appropriately for the
 * desired data model path, regardless if data models matched or not. The
 * launcher subsequently exec'ed the desired executable, in order to make the
 * LD_LIBRARY_PATH path available, for the runtime linker.
 *
 * Now, in most cases,the launcher will dlopen the target libjvm.so. All
 * required libraries are loaded by the runtime linker, using the
 * $RPATH/$ORIGIN baked into the shared libraries at compile time. Therefore,
 * in most cases, the launcher will only exec, if the data models are
 * mismatched, and will not set any environment variables, regardless of the
 * data models.
 *
 * However, if the environment contains a LD_LIBRARY_PATH, this will cause the
 * launcher to inspect the LD_LIBRARY_PATH. The launcher will check
 *  a. if the LD_LIBRARY_PATH's first component is the the path to the desired
 *     libjvm.so
 *  b. if any other libjvm.so is found in any of the paths.
 * If case b is true, then the launcher will set the LD_LIBRARY_PATH to the
 * desired JRE and reexec, in order to propagate the environment.
 *
 *  Main
 *  (incoming argv)
 *  |
 * \|/
 * SelectVersion
 * (selects the JRE version, note: not data model)
 *  |
 * \|/
 * CreateExecutionEnvironment
 * (determines desired data model)
 *  |
 *  |
 * \|/
 *  Have Desired Model ? --> NO --> Is Dual-Mode ? --> NO --> Exit(with error)
 *  |                                          |
 *  |                                          |
 *  |                                         \|/
 *  |                                         YES
 *  |                                          |
 *  |                                          |
 *  |                                         \|/
 *  |                                CheckJvmType
 *  |                               (removes -client, -server etc.)
 *  |                                          |
 *  |                                          |
 * \|/                                        \|/
 * YES                             Find the desired executable/library
 *  |                                          |
 *  |                                          |
 * \|/                                        \|/
 * CheckJvmType                          RequiresSetenv
 * (removes -client, -server, etc.)
 *  |
 *  |
 * \|/
 * TranslateDashJArgs...
 * (Prepare to pass args to vm)
 *  |
 *  |
 * \|/
 * ParseArguments
 * (removes -d32 and -d64 if any,
 *  processes version options,
 *  creates argument list for vm,
 *  etc.)
 *   |
 *   |
 *  \|/
 * RequiresSetenv
 * Is LD_LIBRARY_PATH
 * and friends set ? --> NO --> Have Desired Model ? NO --> Re-exec --> Main
 *  YES                              YES --> Continue
 *   |
 *   |
 *  \|/
 * Path is desired JRE ? YES --> Have Desired Model ? NO --> Re-exec --> Main
 *  NO                               YES --> Continue
 *   |
 *   |
 *  \|/
 * Paths have well known
 * jvm paths ?       --> NO --> Have Desired Model ? NO --> Re-exec --> Main
 *  YES                              YES --> Continue
 *   |
 *   |
 *  \|/
 *  Does libjvm.so exit
 *  in any of them ? --> NO --> Have Desired Model ? NO --> Re-exec --> Main
 *   YES                             YES --> Continue
 *   |
 *   |
 *  \|/
 *  Set the LD_LIBRARY_PATH
 *   |
 *   |
 *  \|/
 * Re-exec
 *   |
 *   |
 *  \|/
 * Main
 */

#define GetArch() GetArchPath(CURRENT_DATA_MODEL)

/* Store the name of the executable once computed */
static char *execname = NULL;

/*
 * execname accessor from other parts of platform dependent logic
 */
const char *
GetExecName() {
    return execname;
}

const char *
GetArchPath(int nbits)
{
    switch(nbits) {
#ifdef DUAL_MODE
        case 32:
            return LIBARCH32NAME;
        case 64:
            return LIBARCH64NAME;
#endif /* DUAL_MODE */
        default:
            return LIBARCHNAME;
    }
}

#ifdef SETENV_REQUIRED
static jboolean JvmExists(const char *path) {
    char tmp[PATH_MAX + 1];
    struct stat statbuf;
    JLI_Snprintf(tmp, PATH_MAX, "%s/%s", path, JVM_DLL);
    if (stat(tmp, &statbuf) == 0) {
        return JNI_TRUE;
    }
    return JNI_FALSE;
}
/*
 * contains a lib/$LIBARCH/{server,client}/libjvm.so ?
 */
static jboolean
ContainsLibJVM(int wanted, const char *env) {
    char clientPattern[PATH_MAX + 1];
    char serverPattern[PATH_MAX + 1];
    char *envpath;
    char *path;
    jboolean clientPatternFound;
    jboolean serverPatternFound;

    /* fastest path */
    if (env == NULL) {
        return JNI_FALSE;
    }

    /* the usual suspects */
    JLI_Snprintf(clientPattern, PATH_MAX, "lib/%s/client", GetArchPath(wanted));
    JLI_Snprintf(serverPattern, PATH_MAX, "lib/%s/server", GetArchPath(wanted));

    /* to optimize for time, test if any of our usual suspects are present. */
    clientPatternFound = JLI_StrStr(env, clientPattern) != NULL;
    serverPatternFound = JLI_StrStr(env, serverPattern) != NULL;
    if (clientPatternFound == JNI_FALSE && serverPatternFound == JNI_FALSE) {
        return JNI_FALSE;
    }

    /*
     * we have a suspicious path component, check if it contains a libjvm.so
     */
    envpath = JLI_StringDup(env);
    for (path = JLI_StrTok(envpath, ":"); path != NULL; path = JLI_StrTok(NULL, ":")) {
        if (clientPatternFound && JLI_StrStr(path, clientPattern) != NULL) {
            if (JvmExists(path)) {
                JLI_MemFree(envpath);
                return JNI_TRUE;
            }
        }
        if (serverPatternFound && JLI_StrStr(path, serverPattern)  != NULL) {
            if (JvmExists(path)) {
                JLI_MemFree(envpath);
                return JNI_TRUE;
            }
        }
    }
    JLI_MemFree(envpath);
    return JNI_FALSE;
}

/*
 * Test whether the environment variable needs to be set, see flowchart.
 */
static jboolean
RequiresSetenv(int wanted, const char *jvmpath) {
    char jpath[PATH_MAX + 1];
    char *llp;
    char *dmllp = NULL;
    char *p; /* a utility pointer */

    llp = getenv("LD_LIBRARY_PATH");
#ifdef __solaris__
    dmllp = (CURRENT_DATA_MODEL == 32)
            ? getenv("LD_LIBRARY_PATH_32")
            : getenv("LD_LIBRARY_PATH_64");
#endif /* __solaris__ */
    /* no environment variable is a good environment variable */
    if (llp == NULL && dmllp == NULL) {
        return JNI_FALSE;
    }
#ifdef __linux
    /*
     * On linux, if a binary is running as sgid or suid, glibc sets
     * LD_LIBRARY_PATH to the empty string for security purposes. (In contrast,
     * on Solaris the LD_LIBRARY_PATH variable for a privileged binary does not
     * lose its settings; but the dynamic linker does apply more scrutiny to the
     * path.) The launcher uses the value of LD_LIBRARY_PATH to prevent an exec
     * loop, here and further downstream. Therefore, if we are running sgid or
     * suid, this function's setting of LD_LIBRARY_PATH will be ineffective and
     * we should case a return from the calling function.  Getting the right
     * libraries will be handled by the RPATH. In reality, this check is
     * redundant, as the previous check for a non-null LD_LIBRARY_PATH will
     * return back to the calling function forthwith, it is left here to safe
     * guard against any changes, in the glibc's existing security policy.
     */
    if ((getgid() != getegid()) || (getuid() != geteuid())) {
        return JNI_FALSE;
    }
#endif /* __linux */

    /*
     * Prevent recursions. Since LD_LIBRARY_PATH is the one which will be set by
     * previous versions of the JRE, thus it is the only path that matters here.
     * So we check to see if the desired JRE is set.
     */
    JLI_StrNCpy(jpath, jvmpath, PATH_MAX);
    p = JLI_StrRChr(jpath, '/');
    *p = '\0';
    if (llp != NULL && JLI_StrNCmp(llp, jpath, JLI_StrLen(jpath)) == 0) {
        return JNI_FALSE;
    }

    /* scrutinize all the paths further */
    if (llp != NULL &&  ContainsLibJVM(wanted, llp)) {
        return JNI_TRUE;
    }
    if (dmllp != NULL && ContainsLibJVM(wanted, dmllp)) {
        return JNI_TRUE;
    }
    return JNI_FALSE;
}
#endif /* SETENV_REQUIRED */

/**
 * 获取JRE及JVM的安装路径
 */
void CreateExecutionEnvironment(int *pargc, char ***pargv,
                           char jrepath[], jint so_jrepath,
                           char jvmpath[], jint so_jvmpath,
                           char jvmcfg[],  jint so_jvmcfg) {
  /*
   * First, determine if we are running the desired data model.  If we
   * are running the desired data model, all the error messages
   * associated with calling GetJREPath, ReadKnownVMs, etc. should be
   * output.  However, if we are not running the desired data model,
   * some of the errors should be suppressed since it is more
   * informative to issue an error message based on whether or not the
   * os/processor combination has dual mode capabilities.
   */
    jboolean jvmpathExists;

    /* Compute/set the name of the executable */
    SetExecname(*pargv);

    /* Check data model flags, and exec process, if needed */
    {
      char *arch        = (char *)GetArch(); /* like sparc or sparcv9 */
      char * jvmtype    = NULL;
      int  argc         = *pargc;
      char **argv       = *pargv;
      int running       = CURRENT_DATA_MODEL;	//当前操作系统的机器位数(32位/64位)

      int wanted        = running;      /* What data mode is being
                                           asked for? Current model is
                                           fine unless another model
                                           is asked for */
#ifdef SETENV_REQUIRED
      jboolean mustsetenv = JNI_FALSE;
      char *runpath     = NULL; /* existing effective LD_LIBRARY_PATH setting */
      char* new_runpath = NULL; /* desired new LD_LIBRARY_PATH string */
      char* newpath     = NULL; /* path on new LD_LIBRARY_PATH */
      char* lastslash   = NULL;
      char** newenvp    = NULL; /* current environment */
#ifdef __solaris__
      char*  dmpath     = NULL;  /* data model specific LD_LIBRARY_PATH,
                                    Solaris only */
#endif /* __solaris__ */
#endif  /* SETENV_REQUIRED */

      char** newargv    = NULL;
      int    newargc    = 0;

      printf("%s[%d] [tid: %lu]: 开始创建java主程序执行的环境...\n", __FILE__, __LINE__, pthread_self());
      /*
       * Starting in 1.5, all unix platforms accept the -d32 and -d64
       * options.  On platforms where only one data-model is supported
       * (e.g. ia-64 Linux), using the flag for the other data model is
       * an error and will terminate the program.
       */

      { /* open new scope to declare local variables */
        int i;

        newargv = (char **)JLI_MemAlloc((argc+1) * sizeof(char*));
        newargv[newargc++] = argv[0];

        /**
         * 确定用户配置的机器位数
         */
        for (i=1; i < argc; i++) {

          if (JLI_StrCmp(argv[i], "-J-d64") == 0 || JLI_StrCmp(argv[i], "-d64") == 0) {
            wanted = 64;
            continue;
          }
          if (JLI_StrCmp(argv[i], "-J-d32") == 0 || JLI_StrCmp(argv[i], "-d32") == 0) {
            wanted = 32;
            continue;
          }

          newargv[newargc++] = argv[i];

          if (IsJavaArgs()) {	//java程序参数
            if (argv[i][0] != '-') continue;
          } else {	//JVM参数
            if (JLI_StrCmp(argv[i], "-classpath") == 0 || JLI_StrCmp(argv[i], "-cp") == 0) {
              i++;
              if (i >= argc) break;
              newargv[newargc++] = argv[i];
              continue;
            }

            if (argv[i][0] != '-') { i++; break; }	//已扫描完了所有的JVM参数
          }

        }

        /* copy rest of args [i .. argc) */
        while (i < argc) {
          newargv[newargc++] = argv[i++];
        }
        newargv[newargc] = NULL;

        /*
         * newargv has all proper arguments here
         */

        argc = newargc;
        argv = newargv;
      }

      /**
       * 当前系统的机器位数与用户配置的匹配
        */
      if (wanted == running) {
        /* Find out where the JRE is that we will be using. */
    	printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的jre路径..\n", __FILE__, __LINE__, pthread_self());
        if (!GetJREPath(jrepath, so_jrepath, arch, JNI_FALSE) ) {
          JLI_ReportErrorMessage(JRE_ERROR1);
          exit(2);
        }
        JLI_Snprintf(jvmcfg, so_jvmcfg, "%s%slib%s%s%sjvm.cfg", jrepath, FILESEP, FILESEP,  arch, FILESEP);

        printf("%s[%d] [tid: %lu]: 当前java主程序执行的jre环境[%s]; JVM的配置文件路径[%s].\n", __FILE__, __LINE__, pthread_self(), jrepath, jvmcfg);

        /* Find the specified JVM type */
        printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的JVM类型..\n", __FILE__, __LINE__, pthread_self());
        if (ReadKnownVMs(jvmcfg, JNI_FALSE) < 1) {
          JLI_ReportErrorMessage(CFG_ERROR7);
          exit(1);
        }

        jvmpath[0] = '\0';
        jvmtype = CheckJvmType(pargc, pargv, JNI_FALSE);
        if (JLI_StrCmp(jvmtype, "ERROR") == 0) {
            JLI_ReportErrorMessage(CFG_ERROR9);
            exit(4);
        }

        printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的JVM环境..\n", __FILE__, __LINE__, pthread_self());
        if (!GetJVMPath(jrepath, jvmtype, jvmpath, so_jvmpath, arch, 0 )) {
          JLI_ReportErrorMessage(CFG_ERROR8, jvmtype, jvmpath);
          exit(4);
        }
        printf("%s[%d] [tid: %lu]: java主程序执行的JVM环境[%s].\n", __FILE__, __LINE__, pthread_self(), jvmpath);
        /*
         * we seem to have everything we need, so without further ado
         * we return back, otherwise proceed to set the environment.
         */
#ifdef SETENV_REQUIRED
        mustsetenv = RequiresSetenv(wanted, jvmpath);
        JLI_TraceLauncher("mustsetenv: %s\n", mustsetenv ? "TRUE" : "FALSE");

        if (mustsetenv == JNI_FALSE) {
            return;
        }
#else
        return;
#endif /* SETENV_REQUIRED */
      } else {  /* do the same speculatively or exit */
#ifdef DUAL_MODE
        if (running != wanted) {
          printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的jre环境..\n", __FILE__, __LINE__, pthread_self());
          /* Find out where the JRE is that we will be using. */
          if (!GetJREPath(jrepath, so_jrepath, GetArchPath(wanted), JNI_TRUE)) {
            /* give up and let other code report error message */
            JLI_ReportErrorMessage(JRE_ERROR2, wanted);
            exit(1);
          }
          JLI_Snprintf(jvmcfg, so_jvmcfg, "%s%slib%s%s%sjvm.cfg", jrepath, FILESEP, FILESEP, GetArchPath(wanted), FILESEP);

          printf("%s[%d] [tid: %lu]: java主程序执行的jre环境[%s]; JVM的配置文件路径[%s].\n", __FILE__, __LINE__, pthread_self(), jrepath, jvmcfg);

          /*
           * Read in jvm.cfg for target data model and process vm
           * selection options.
           */
          printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的JVM类型..\n", __FILE__, __LINE__, pthread_self());
          if (ReadKnownVMs(jvmcfg, JNI_TRUE) < 1) {
            /* give up and let other code report error message */
            JLI_ReportErrorMessage(JRE_ERROR2, wanted);
            exit(1);
          }
          jvmpath[0] = '\0';
          jvmtype = CheckJvmType(pargc, pargv, JNI_TRUE);
          if (JLI_StrCmp(jvmtype, "ERROR") == 0) {
            JLI_ReportErrorMessage(CFG_ERROR9);
            exit(4);
          }

          /* exec child can do error checking on the existence of the path */
          printf("%s[%d] [tid: %lu]: 试图获取java主程序执行的JVM环境..\n", __FILE__, __LINE__, pthread_self());
          jvmpathExists = GetJVMPath(jrepath, jvmtype, jvmpath, so_jvmpath, GetArchPath(wanted), 0);
          printf("%s[%d] [tid: %lu]: java主程序执行的JVM环境[%s].\n", __FILE__, __LINE__, pthread_self(), jvmpath);

#ifdef SETENV_REQUIRED
          mustsetenv = RequiresSetenv(wanted, jvmpath);
#endif /* SETENV_REQUIRED */
        }
#else /* ! DUALMODE */

        printf("%s[%d] [tid: %lu]: JVM配置错误，机器的实际字长%d位，配置的JVM机器字长%d位.\n", __FILE__, __LINE__, pthread_self(), running, wanted);
        JLI_ReportErrorMessage(JRE_ERROR2, wanted);
        exit(1);
#endif /* DUAL_MODE */
        }
#ifdef SETENV_REQUIRED
        if (mustsetenv) {
            /*
             * We will set the LD_LIBRARY_PATH as follows:
             *
             *     o          $JVMPATH (directory portion only)
             *     o          $JRE/lib/$LIBARCHNAME
             *     o          $JRE/../lib/$LIBARCHNAME
             *
             * followed by the user's previous effective LD_LIBRARY_PATH, if
             * any.
             */

#ifdef __solaris__
            /*
             * Starting in Solaris 7, ld.so.1 supports three LD_LIBRARY_PATH
             * variables:
             *
             * 1. LD_LIBRARY_PATH -- used for 32 and 64 bit searches if
             * data-model specific variables are not set.
             *
             * 2. LD_LIBRARY_PATH_64 -- overrides and replaces LD_LIBRARY_PATH
             * for 64-bit binaries.
             *
             * 3. LD_LIBRARY_PATH_32 -- overrides and replaces LD_LIBRARY_PATH
             * for 32-bit binaries.
             *
             * The vm uses LD_LIBRARY_PATH to set the java.library.path system
             * property.  To shield the vm from the complication of multiple
             * LD_LIBRARY_PATH variables, if the appropriate data model
             * specific variable is set, we will act as if LD_LIBRARY_PATH had
             * the value of the data model specific variant and the data model
             * specific variant will be unset.  Note that the variable for the
             * *wanted* data model must be used (if it is set), not simply the
             * current running data model.
             */

            switch (wanted) {
                case 0:
                    if (running == 32) {
                        dmpath = getenv("LD_LIBRARY_PATH_32");
                        wanted = 32;
                    } else {
                        dmpath = getenv("LD_LIBRARY_PATH_64");
                        wanted = 64;
                    }
                    break;

                case 32:
                    dmpath = getenv("LD_LIBRARY_PATH_32");
                    break;

                case 64:
                    dmpath = getenv("LD_LIBRARY_PATH_64");
                    break;

                default:
                    JLI_ReportErrorMessage(JRE_ERROR3, __LINE__);
                    exit(1); /* unknown value in wanted */
                    break;
            }

            /*
             * If dmpath is NULL, the relevant data model specific variable is
             * not set and normal LD_LIBRARY_PATH should be used.
             */
            if (dmpath == NULL) {
                runpath = getenv("LD_LIBRARY_PATH");
            } else {
                runpath = dmpath;
            }
#else /* ! __solaris__ */
            /*
             * If not on Solaris, assume only a single LD_LIBRARY_PATH
             * variable.
             */
            runpath = getenv("LD_LIBRARY_PATH");
#endif /* __solaris__ */

            /* runpath contains current effective LD_LIBRARY_PATH setting */

            jvmpath = JLI_StringDup(jvmpath);
            new_runpath = JLI_MemAlloc(((runpath != NULL) ? JLI_StrLen(runpath) : 0) +
                    2 * JLI_StrLen(jrepath) + 2 * JLI_StrLen(arch) +
                    JLI_StrLen(jvmpath) + 52);
            newpath = new_runpath + JLI_StrLen("LD_LIBRARY_PATH=");


            /*
             * Create desired LD_LIBRARY_PATH value for target data model.
             */
            {
                /* remove the name of the .so from the JVM path */
                lastslash = JLI_StrRChr(jvmpath, '/');
                if (lastslash)
                    *lastslash = '\0';

                sprintf(new_runpath, "LD_LIBRARY_PATH="
                        "%s:"
                        "%s/lib/%s:"
                        "%s/../lib/%s",
                        jvmpath,
#ifdef DUAL_MODE
                        jrepath, GetArchPath(wanted),
                        jrepath, GetArchPath(wanted)
#else /* !DUAL_MODE */
                        jrepath, arch,
                        jrepath, arch
#endif /* DUAL_MODE */
                        );


                /*
                 * Check to make sure that the prefix of the current path is the
                 * desired environment variable setting, though the RequiresSetenv
                 * checks if the desired runpath exists, this logic does a more
                 * comprehensive check.
                 */
                if (runpath != NULL &&
                        JLI_StrNCmp(newpath, runpath, JLI_StrLen(newpath)) == 0 &&
                        (runpath[JLI_StrLen(newpath)] == 0 || runpath[JLI_StrLen(newpath)] == ':') &&
                        (running == wanted) /* data model does not have to be changed */
#ifdef __solaris__
                        && (dmpath == NULL) /* data model specific variables not set  */
#endif /* __solaris__ */
                        ) {

                    return;

                }
            }

            /*
             * Place the desired environment setting onto the prefix of
             * LD_LIBRARY_PATH.  Note that this prevents any possible infinite
             * loop of execv() because we test for the prefix, above.
             */
            if (runpath != 0) {
                JLI_StrCat(new_runpath, ":");
                JLI_StrCat(new_runpath, runpath);
            }

            if (putenv(new_runpath) != 0) {
                exit(1); /* problem allocating memory; LD_LIBRARY_PATH not set
                    properly */
            }

            /*
             * Unix systems document that they look at LD_LIBRARY_PATH only
             * once at startup, so we have to re-exec the current executable
             * to get the changed environment variable to have an effect.
             */

#ifdef __solaris__
            /*
             * If dmpath is not NULL, remove the data model specific string
             * in the environment for the exec'ed child.
             */
            if (dmpath != NULL)
                (void)UnsetEnv((wanted == 32) ? "LD_LIBRARY_PATH_32" : "LD_LIBRARY_PATH_64");
#endif /* __solaris */

            newenvp = environ;
        }
#endif /* SETENV_REQUIRED */
        {
            char *newexec = execname;
#ifdef DUAL_MODE
            /*
             * If the data model is being changed, the path to the
             * executable must be updated accordingly; the executable name
             * and directory the executable resides in are separate.  In the
             * case of 32 => 64, the new bits are assumed to reside in, e.g.
             * "olddir/LIBARCH64NAME/execname"; in the case of 64 => 32,
             * the bits are assumed to be in "olddir/../execname".  For example,
             *
             * olddir/sparcv9/execname
             * olddir/amd64/execname
             *
             * for Solaris SPARC and Linux amd64, respectively.
             */

            if (running != wanted) {
                char *oldexec = JLI_StrCpy(JLI_MemAlloc(JLI_StrLen(execname) + 1), execname);
                char *olddir = oldexec;
                char *oldbase = JLI_StrRChr(oldexec, '/');


                newexec = JLI_MemAlloc(JLI_StrLen(execname) + 20);
                *oldbase++ = 0;
                sprintf(newexec, "%s/%s/%s", olddir,
                        ((wanted == 64) ? LIBARCH64NAME : ".."), oldbase);
                argv[0] = newexec;
            }
#endif /* DUAL_MODE */
            JLI_TraceLauncher("TRACER_MARKER:About to EXEC\n");
            (void) fflush(stdout);
            (void) fflush(stderr);
#ifdef SETENV_REQUIRED
            if (mustsetenv) {
                execve(newexec, argv, newenvp);
            } else {
                execv(newexec, argv);
            }
#else /* !SETENV_REQUIRED */
            execv(newexec, argv);
#endif /* SETENV_REQUIRED */
            JLI_ReportErrorMessageSys(JRE_ERROR4, newexec);

#ifdef DUAL_MODE
            if (running != wanted) {
                JLI_ReportErrorMessage(JRE_ERROR5, wanted, running);
#ifdef __solaris__
#ifdef __sparc
                JLI_ReportErrorMessage(JRE_ERROR6);
#else  /* ! __sparc__ */
                JLI_ReportErrorMessage(JRE_ERROR7);
#endif  /* __sparc */
#endif /* __solaris__ */
            }
#endif /* DUAL_MODE */

        }
        exit(1);
    }
}

/*
 * 根据jre的安装目录获取jvm实现的动态链接库
 *
 * 函数原型:	int stat(const char * file_name, struct stat *buf);
 * 函数说明:	用来将参数file_name所指的文件状态复制到参数buf所指的结构中
 * 参数说明:	struct stat{
 * 			    dev_t st_dev; //文件的设备编号
 * 			    ino_t st_ino; //文件的i-node
 * 			    mode_t st_mode; //文件的类型和存取的权限
 * 			    nlink_t st_nlink; //连到该文件的硬连接数目,刚建立的文件值为1.
 * 			    uid_t st_uid; //文件所有者的用户识别码
 * 			    gid_t st_gid; //文件所有者的组识别码
 * 			    dev_t st_rdev; //若此文件为装置设备文件, 则为其设备编号
 * 			    off_t st_size; //文件大小, 以字节计算
 * 			    unsigned long st_blksize; //文件系统的I/O缓冲区大小.
 * 			    unsigned long st_blocks; //占用文件区块的个数, 每一区块大小为512 个字节.
 * 			    time_t st_atime;  //文件最近一次被存取或被执行的时间, 一般只有在用mknod/utime/read/write/tructate时改变.
 * 			    time_t st_mtime; //文件最后一次被修改的时间, 一般只有在用mknod/utime/write 时才会改变
 * 			    time_t st_ctime; // 最近一次被更改的时间, 此参数会在文件所有者、组、权限被更改时更新
 * 			 };
 * 函数返回:	执行成功则返回0;失败返回-1.错误代码存于errno:
 * 				ENOENT 参数file_name指定的文件不存在
 * 				ENOTDIR 路径中的目录存在但却非真正的目录
 * 				ELOOP 欲打开的文件有过多符号连接问题, 上限为16 符号连接
 * 				EFAULT 参数buf 为无效指针, 指向无法存在的内存空间
 * 				EACCESS 存取文件时被拒绝
 * 				ENOMEM 核心内存不足
 * 				ENAMETOOLONG 参数file_name 的路径名称太长
 *
 */
static jboolean GetJVMPath(const char *jrepath, const char *jvmtype,
           char *jvmpath, jint jvmpathsize, const char * arch, int bitsWanted)
{
    struct stat s;

    printf("%s[%d] [tid: %lu]: 试图根据jre的安装目录获取jvm实现的动态链接库路径..\n", __FILE__, __LINE__, pthread_self());

    if (JLI_StrChr(jvmtype, '/')) {
        JLI_Snprintf(jvmpath, jvmpathsize, "%s/" JVM_DLL, jvmtype);
    } else {
        JLI_Snprintf(jvmpath, jvmpathsize, "%s/lib/%s/%s/" JVM_DLL, jrepath, arch, jvmtype);
    }

    JLI_TraceLauncher("Does `%s' exist ... ", jvmpath);

    if (stat(jvmpath, &s) == 0) {
    	printf("%s[%d] [tid: %lu]: 当前jre的jvm实现动态链接库路径: %s.\n", __FILE__, __LINE__, pthread_self(), jvmpath);

        JLI_TraceLauncher("yes.\n");
        return JNI_TRUE;
    } else {
    	printf("%s[%d] [tid: %lu]: 无法找到当前jre的jvm实现动态链接库路径: %s.\n", __FILE__, __LINE__, pthread_self(), jvmpath);

        JLI_TraceLauncher("no.\n");
        return JNI_FALSE;
    }
}

/*
 * 根据当前进程的启动命令获取jre的安装目录
 *
 * 函数原型:	int access(const char *pathname, int mode);
 * 函数说明:	检查调用进程是否可以对指定的文件执行某种操作
 * 参数说明:	pathname: 需要测试的文件路径名
 * 			mode: 需要测试的操作模式,可能值是一个或多个R_OK(可读),W_OK(可写),
 * 				  X_OK(可执行)或F_OK(文件存在)组合体
 * 函数返回:	成功执行时,返回0;失败返回-1. errno:
 * 				EINVAL:	模式值无效
 * 				EACCES:	文件或路径名中包含的目录不可访问
 * 				ELOOP:	解释路径名过程中存在太多的符号连接
 * 				ENAMETOOLONG:	路径名太长
 * 				ENOENT:	路径名中的目录不存在或是无效的符号连接
 * 				ENOTDIR:	路径名中当作目录的组件并非目录
 * 				EROFS:	文件系统只读
 * 				EFAULT:	路径名指向可访问的空间外
 * 				EIO:	输入输出错误
 * 				ENOMEM:	不能获取足够的内核内存
 * 				ETXTBSY:	对程序写入出错
 *
 */
static jboolean GetJREPath(char *path, jint pathsize, const char * arch, jboolean speculative)
{
    char libjava[MAXPATHLEN];

    printf("%s[%d] [tid: %lu]: 试图根据当前进程的启动命令获取jre的安装目录..\n", __FILE__, __LINE__, pthread_self());

    if (GetApplicationHome(path, pathsize)) {
        /* Is JRE co-located with the application? */
        JLI_Snprintf(libjava, sizeof(libjava), "%s/lib/%s/" JAVA_DLL, path, arch);
        if (access(libjava, F_OK) == 0) {
            JLI_TraceLauncher("JRE path is %s\n", path);

            printf("%s[%d] [tid: %lu]: 当前jre的安装目录: %s..\n", __FILE__, __LINE__, pthread_self(), path);

            return JNI_TRUE;
        }

        /* Does the app ship a private JRE in <apphome>/jre directory? */
        JLI_Snprintf(libjava, sizeof(libjava), "%s/jre/lib/%s/" JAVA_DLL, path, arch);
        if (access(libjava, F_OK) == 0) {
            JLI_StrCat(path, "/jre");
            JLI_TraceLauncher("JRE path is %s\n", path);

            printf("%s[%d] [tid: %lu]: 当前jre的安装目录: %s..\n", __FILE__, __LINE__, pthread_self(), path);

            return JNI_TRUE;
        }
    }

    if (!speculative)
      JLI_ReportErrorMessage(JRE_ERROR8 JAVA_DLL);

    return JNI_FALSE;
}

/**
 * 加载JVM的实现所在的动态连接库(三个入口函数指针)
 */
jboolean LoadJavaVM(const char *jvmpath, InvocationFunctions *ifn)
{
    Dl_info dlinfo;
    void *libjvm;

    printf("%s[%d] [tid: %lu]: 开始加载JVM的实现所在的动态连接库[%s]...\n", __FILE__, __LINE__, pthread_self(), jvmpath);

    JLI_TraceLauncher("JVM path is %s\n", jvmpath);

    printf("%s[%d] [tid: %lu]: 打开动态连接库(RTLD_NOW + RTLD_GLOBAL)[%s]..\n", __FILE__, __LINE__, pthread_self(), jvmpath);
    libjvm = dlopen(jvmpath, RTLD_NOW + RTLD_GLOBAL);

    if (libjvm == NULL) {
#if defined(__solaris__) && defined(__sparc) && !defined(_LP64) /* i.e. 32-bit sparc */
      FILE * fp;
      Elf32_Ehdr elf_head;
      int count;
      int location;

      fp = fopen(jvmpath, "r");
      if (fp == NULL) {
        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
      }

      /* read in elf header */
      count = fread((void*)(&elf_head), sizeof(Elf32_Ehdr), 1, fp);
      fclose(fp);
      if (count < 1) {
        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
      }

      /*
       * Check for running a server vm (compiled with -xarch=v8plus)
       * on a stock v8 processor.  In this case, the machine type in
       * the elf header would not be included the architecture list
       * provided by the isalist command, which is turn is gotten from
       * sysinfo.  This case cannot occur on 64-bit hardware and thus
       * does not have to be checked for in binaries with an LP64 data
       * model.
       */
      if (elf_head.e_machine == EM_SPARC32PLUS) {
        char buf[257];  /* recommended buffer size from sysinfo man
                           page */
        long length;
        char* location;

        length = sysinfo(SI_ISALIST, buf, 257);
        if (length > 0) {
            location = JLI_StrStr(buf, "sparcv8plus ");
          if (location == NULL) {
            JLI_ReportErrorMessage(JVM_ERROR3);
            return JNI_FALSE;
          }
        }
      }
#endif
        printf("%s[%d] [tid: %lu]: 打开动态连接库[%s]失败！！\n", __FILE__, __LINE__, pthread_self(), jvmpath);
      	JLI_ReportErrorMessage(DLL_ERROR1, __LINE__);
        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
    }

    printf("%s[%d] [tid: %lu]: 获取动态连接库[%s]中函数[JNI_CreateJavaVM]的指针..\n", __FILE__, __LINE__, pthread_self(), jvmpath);
    ifn->CreateJavaVM = (CreateJavaVM_t) dlsym(libjvm, "JNI_CreateJavaVM");
    if (ifn->CreateJavaVM == NULL) {
    	printf("%s[%d] [tid: %lu]: 无法从动态连接库[%s]中加载函数[JNI_CreateJavaVM].\n", __FILE__, __LINE__, pthread_self(), jvmpath);

        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
    }

    printf("%s[%d] [tid: %lu]: 获取动态连接库[%s]中函数[JNI_GetDefaultJavaVMInitArgs]的指针..\n", __FILE__, __LINE__, pthread_self(), jvmpath);
    ifn->GetDefaultJavaVMInitArgs = (GetDefaultJavaVMInitArgs_t) dlsym(libjvm, "JNI_GetDefaultJavaVMInitArgs");
    if (ifn->GetDefaultJavaVMInitArgs == NULL) {
    	printf("%s[%d] [tid: %lu]: 无法从动态连接库[%s]中加载函数[JNI_GetDefaultJavaVMInitArgs].\n", __FILE__, __LINE__, pthread_self(), jvmpath);

        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
    }

    printf("%s[%d] [tid: %lu]: 获取动态连接库[%s]中函数[JNI_GetCreatedJavaVMs]的指针..\n", __FILE__, __LINE__, pthread_self(), jvmpath);
    ifn->GetCreatedJavaVMs = (GetCreatedJavaVMs_t) dlsym(libjvm, "JNI_GetCreatedJavaVMs");
    if (ifn->GetCreatedJavaVMs == NULL) {
    	printf("%s[%d] [tid: %lu]: 无法从动态连接库[%s]中加载函数[JNI_GetCreatedJavaVMs].\n", __FILE__, __LINE__, pthread_self(), jvmpath);

        JLI_ReportErrorMessage(DLL_ERROR2, jvmpath, dlerror());
        return JNI_FALSE;
    }

    return JNI_TRUE;
}

/*
 * 获取启动当前进程命令的绝对路径
 *
 * 在Linux系统中,可以通过读取符号链接文件/proc/self/exe来获取当前进程对应之静态映像文件的绝对路径
 *
 * 函数原型:	ssize_t readlink(const char *path, char *buf, size_t bufsiz);
 * 函数说明:	将参数path的符号链接内容存储到参数buf所指的内存空间,返回的内容不是以'\0'作字符串结尾,
 * 			但会将字符串的字符数返回，这使得添加'\0'变得简单.若参数bufsiz小于符号连接的内容长度,
 * 			过长的内容会被截断,如果 readlink第一个参数指向一个文件而不是符号链接时,readlink设
 * 			置errno为 EINVAL,并返回 -1
 * 参数说明:
 * 函数返回:	执行成功则返回字符串的字符数;失败返回-1,错误代码存于errno:
 * 				EACCESS 取文件时被拒绝,权限不够
 * 				EINVAL 参数bufsiz为负数
 * 				EIO 存取错误
 * 				ELOOP 欲打开的文件有过多符号连接问题
 * 				ENAMETOOLONG 参数path的路径名称太长
 * 				ENOENT 参数path所指定的文件不存在
 * 				ENOMEM 核心内存不足
 * 				ENOTDIR 参数path路径中的目录存在但却非真正的目录
 */
const char* SetExecname(char **argv)
{
    char* exec_path = NULL;
#if defined(__solaris__)
    {
        Dl_info dlinfo;
        int (*fptr)();

        fptr = (int (*)())dlsym(RTLD_DEFAULT, "main");
        if (fptr == NULL) {
            JLI_ReportErrorMessage(DLL_ERROR3, dlerror());
            return JNI_FALSE;
        }

        if (dladdr((void*)fptr, &dlinfo)) {
            char *resolved = (char*)JLI_MemAlloc(PATH_MAX+1);
            if (resolved != NULL) {
                exec_path = realpath(dlinfo.dli_fname, resolved);
                if (exec_path == NULL) {
                    JLI_MemFree(resolved);
                }
            }
        }
    }
#elif defined(__linux__)
    {
        const char* self = "/proc/self/exe";
        char buf[PATH_MAX+1];
        int len = readlink(self, buf, PATH_MAX);
        if (len >= 0) {
            buf[len] = '\0';            /* readlink doesn't nul terminate */
            exec_path = JLI_StringDup(buf);
        }
    }
#else /* !__solaris__ && !__linux__ */
    {
        /* Not implemented */
    }
#endif

    if (exec_path == NULL) {
        exec_path = FindExecName(argv[0]);
    }
    execname = exec_path;

    return exec_path;
}

/* --- Splash Screen shared library support --- */
static const char* SPLASHSCREEN_SO = JNI_LIB_NAME("splashscreen");
static void* hSplashLib = NULL;

void* SplashProcAddress(const char* name) {
    if (!hSplashLib) {
        const char * splashLibPath;
        splashLibPath = SPLASHSCREEN_SO;
        hSplashLib = dlopen(splashLibPath, RTLD_LAZY | RTLD_GLOBAL);
    }
    if (hSplashLib) {
        void* sym = dlsym(hSplashLib, name);
        return sym;
    } else {
        return NULL;
    }
}

void SplashFreeLibrary() {
    if (hSplashLib) {
        dlclose(hSplashLib);
        hSplashLib = NULL;
    }
}

/*
 * Block current thread and continue execution in a new thread
 */
int
ContinueInNewThread0(int (JNICALL *continuation)(void *), jlong stack_size, void * args) {
    int rslt;
#ifdef __linux__
    pthread_t tid;
    pthread_attr_t attr;

    printf("%s[%d] [tid: %lu]: 开始创建一个新线程来运行JVM...\n", __FILE__, __LINE__, pthread_self());

    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

    if (stack_size > 0) {
      pthread_attr_setstacksize(&attr, stack_size);
    }

    if (pthread_create(&tid, &attr, (void *(*)(void*))continuation, (void*)args) == 0) {
      void * tmp;
      printf("%s[%d] [tid: %lu]: 开始等待JVM线程的运行结束...\n", __FILE__, __LINE__, pthread_self());
      pthread_join(tid, &tmp);
      rslt = (int)tmp;
    } else {
     /*
      * Continue execution in current thread if for some reason (e.g. out of
      * memory/LWP)  a new thread can't be created. This will likely fail
      * later in continuation as JNI_CreateJavaVM needs to create quite a
      * few new threads, anyway, just give it a try..
      */
      rslt = continuation(args);
    }

    pthread_attr_destroy(&attr);
#else /* ! __linux__ */
    thread_t tid;
    long flags = 0;
    if (thr_create(NULL, stack_size, (void *(*)(void *))continuation, args, flags, &tid) == 0) {
      void * tmp;
      thr_join(tid, NULL, &tmp);
      rslt = (int)tmp;
    } else {
      /* See above. Continue in current thread if thr_create() failed */
      rslt = continuation(args);
    }
#endif /* __linux__ */

    return rslt;
}

/* Coarse estimation of number of digits assuming the worst case is a 64-bit pid. */
#define MAX_PID_STR_SZ   20

void SetJavaLauncherPlatformProps() {
   /* Linux only */
#ifdef __linux__
    const char *substr = "-Dsun.java.launcher.pid=";
    char *pid_prop_str = (char *)JLI_MemAlloc(JLI_StrLen(substr) + MAX_PID_STR_SZ + 1);
    sprintf(pid_prop_str, "%s%d", substr, getpid());
    printf("%s[%d] [%lu]: 添加JVM运行时属性[%s].\n", __FILE__, __LINE__, pthread_self(), pid_prop_str);
    AddOption(pid_prop_str, NULL);
#endif /* __linux__ */
}

/**
 * 启动新线程来开启JVM
 */
int JVMInit(InvocationFunctions* ifn, jlong threadStackSize,
        int argc, char **argv,
        int mode, char *what, int ret)
{

    ShowSplashScreen();	//展示启动画面

    return ContinueInNewThread(ifn, threadStackSize, argc, argv, mode, what, ret);
}

void
PostJVMInit(JNIEnv *env, jstring mainClass, JavaVM *vm)
{
    // stubbed out for windows and *nixes.
}

void
RegisterThread()
{
    // stubbed out for windows and *nixes.
}

/*
 * on unix, we return a false to indicate this option is not applicable
 */
jboolean
ProcessPlatformOption(const char *arg)
{
    return JNI_FALSE;
}
