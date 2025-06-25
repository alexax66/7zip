#!/bin/sh

cd CPP/7zip/Bundles/Alone2

    # -D_GNU_SOURCE: broken sched.h defines

gmake -j8 -f makefile.gcc
	CC="${CC:-cc} $CFLAGS $LDFLAGS -D_GNU_SOURCE" \
	CXX="${CXX:-c++} $CXXFLAGS $LDFLAGS -D_GNU_SOURCE" USE_X86_ASM=1 USE_JWASM=1
#	CXX="${CXX:-c++} $CXXFLAGS $LDFLAGS -D_GNU_SOURCE" \
#	DISABLE_RAR=0
