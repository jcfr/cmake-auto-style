cmake-commands-remove-block-end-arguments
=========================================

Remove CMake-language block-end command arguments


Install
-------

```
curl -# https://raw.githubusercontent.com/jcfr/cmake-auto-style/master/cmake-commands-remove-block-end-arguments.sh \
  -o ~/bin/cmake-commands-remove-block-end-arguments && \
chmod +x ~/bin/cmake-commands-remove-block-end-arguments
```

Usage
-----

```
cmake-commands-remove-block-end-arguments /path/to/src
```


Suggested Commit Message
------------------------

```
cmake: Remove CMake-language block-end command arguments

Ancient versions of CMake required else(), endif(), and similar block
termination commands to have arguments matching the command starting the
block. This is no longer the preferred style.
```


Credits
-------

Adapted from the work of `Brad King <brad.king@kitware.com>`

Copied from https://github.com/Kitware/CMake/commit/9db3116

