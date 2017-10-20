#!/usr/bin/env bash

#
# Remove CMake-language block-end command arguments
#
# Adapted from the work of Brad King <brad.king@kitware.com>
# Copied from https://github.com/Kitware/CMake/commit/77543bd
#

for c in else endif endforeach endfunction endmacro endwhile; do
        echo 's/\b'"$c"'\(\s*\)(.\+)/'"$c"'\1()/'
    done >convert.sed &&
    git ls-files -z -- bootstrap '*.cmake' '*.cmake.in' '*CMakeLists.txt' |
    #egrep -z -v '^(Utilities/cm|Source/kwsys/)' |
    xargs -0 sed -i -f convert.sed &&
    rm convert.sed
