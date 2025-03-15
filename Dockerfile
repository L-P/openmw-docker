FROM ubuntu:24.04

VOLUME /app
WORKDIR /app

RUN set -eux; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common; \
    add-apt-repository ppa:openmw/openmw-daily

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        git build-essential cmake ninja-build \
        libavcodec-dev \
        libavformat-dev \
        libavutil-dev \
        libboost-filesystem-dev \
        libboost-iostreams-dev \
        libboost-program-options-dev \
        libbullet-dev \
        libcollada-dom-dev \
        libluajit-5.1-dev \
        liblz4-dev \
        libmygui-dev \
        libopenal-dev \
        libopenscenegraph-dev \
        libqt5opengl5-dev \
        libqt5svg5-dev \
        libsdl2-dev \
        libsqlite3-dev \
        libswresample-dev \
        libswscale-dev \
        libtinyxml-dev \
        libunshield-dev \
        libyaml-cpp-dev \
        qttools5-dev
