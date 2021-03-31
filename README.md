# OpenMW-docker

Build and run OpenMW inside a Docker container.

This is definitely a hack. The idea is to be able to build and debug OpenMW
without having to install its build dependencies, it has only been tested on
Debian (Buster) and is not expected to function anywhere else.

## Build
```shell
$ docker build . -t openmw
$ ./build
$ ./launcher # to configure, it will fail to run the game when you click play.
$ ./run
```
