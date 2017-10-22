#!/usr/bin/env bash

#
# Download and install all cmake scripts into ~/bin
#

for script in \
    cmake-commands-remove-block-end-arguments \
    cmake-commands-to-lower-case;
  do
    echo "Installing $script"
    curl -# https://raw.githubusercontent.com/jcfr/cmake-auto-style/master/$script.sh \
  -o ~/bin/$script && \
    chmod +x ~/bin/$script
done

