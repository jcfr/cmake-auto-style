#!/usr/bin/env bash

#
# Convert CMake-language commands to lower case
#
# Adapted from the work of Brad King <brad.king@kitware.com>
# Copied from https://github.com/Kitware/CMake/commit/77543bd
#

cmake --help-command-list |
  grep -v "cmake version" |
  while read c; do
    echo 's/\b'"$(echo $c | tr '[:lower:]' '[:upper:]')"'\(\s*\)(/'"$c"'\1(/g'
  done >convert.sed &&
  git ls-files -z -- '*.cmake' '*.cmake.in' '*CMakeLists.txt' |
  xargs -0 sed -i -f convert.sed &&
  rm convert.sed

cat << EOF

Suggested Commit Message:

---------------------------------------------------------------
cmake: Convert CMake-language commands to lower case

Ancient CMake versions required upper-case commands. Later
command names became case-insensitive. Now the preferred style
is lower-case
---------------------------------------------------------------
EOF
