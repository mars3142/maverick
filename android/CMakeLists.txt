cmake_minimum_required(VERSION 3.4.1)

add_library( maverick

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
             ../ios/Classes/lua/lapi.c
             ../ios/Classes/lua/lauxlib.c
             ../ios/Classes/lua/lbaselib.c
             ../ios/Classes/lua/lcode.c
             ../ios/Classes/lua/ldblib.c
             ../ios/Classes/lua/ldebug.c
             ../ios/Classes/lua/ldo.c
             ../ios/Classes/lua/ldump.c
             ../ios/Classes/lua/lfunc.c
             ../ios/Classes/lua/lgc.c
             ../ios/Classes/lua/linit.c
             ../ios/Classes/lua/liolib.c
             ../ios/Classes/lua/llex.c
             ../ios/Classes/lua/lmathlib.c
             ../ios/Classes/lua/lmem.c
             ../ios/Classes/lua/loadlib.c
             ../ios/Classes/lua/lobject.c
             ../ios/Classes/lua/lopcodes.c
             ../ios/Classes/lua/loslib.c
             ../ios/Classes/lua/lparser.c
             ../ios/Classes/lua/lstate.c
             ../ios/Classes/lua/lstring.c
             ../ios/Classes/lua/lstrlib.c
             ../ios/Classes/lua/ltable.c
             ../ios/Classes/lua/ltablib.c
             ../ios/Classes/lua/ltm.c
             ../ios/Classes/lua/lua.c
             ../ios/Classes/lua/lundump.c
             ../ios/Classes/lua/lvm.c
             ../ios/Classes/lua/lzio.c
             ../ios/Classes/lua/print.c)
