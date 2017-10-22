CMake Auto Style
================

Collection of scripts useful to update a CMake projects to match the recommended style.


Quick Start
-----------

All scripts can be installed or updated in `~/bin` doing:

```
script=cmake-auto-style-install; \
echo "Installing $script"; \
curl -# https://raw.githubusercontent.com/jcfr/cmake-auto-style/master/$script.sh \
  -o ~/bin/$script && \
chmod +x ~/bin/$script; \
\
cmake-auto-style-install
```


Scripts
-------

* [cmake-commands-to-lower-case](./docs/cmake-commands-to-lower-case.md#cmake-commands-to-lower-case)
* [cmake-commands-remove-block-end-arguments](./docs/cmake-commands-remove-block-end-arguments.md#cmake-commands-remove-block-end-arguments)


Prerequisites
-------------

*Apply to all scripts*

* Bash
* CMake


Credits
-------

Original author and references are listed in each script.


License
-------

It is covered by the Apache License, Version 2.0:

http://www.apache.org/licenses/LICENSE-2.0
