
cmake-commands-to-lower-case
============================

Convert CMake-language commands to lower case.


Prerequisites
-------------

* Bash
* CMake


Install
-------

```
curl https://raw.githubusercontent.com/jcfr/cmake-auto-style/master/cmake-commands-to-lower-case.sh \
  -o ~/bin/cmake-commands-to-lower-case && \
chmod +x ~/bin/cmake-commands-to-lower-case
```

Usage
-----

```
cd /path/to/src
cmake-commands-to-lower-case
```


Suggested commit message
------------------------

```
cmake: Convert CMake-language commands to lower case
    
Ancient CMake versions required upper-case commands. Later
command names became case-insensitive. Now the preferred style
is lower-case
```


Credits
-------

Adapted from the work of `Brad King <brad.king@kitware.com>`
and copied from https://github.com/Kitware/CMake/commit/77543bd

