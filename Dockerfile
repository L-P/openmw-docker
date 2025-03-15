FROM ubuntu:24.04

VOLUME /app
WORKDIR /app

RUN set -eux; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y --no-install-recommends software-properties-common; \
    add-apt-repository -y ppa:openmw/openmw; \
    add-apt-repository -y ppa:openmw/openmw-daily; \
    add-apt-repository -y ppa:openmw/staging

RUN set -eux; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        cmake \
        git \
        libavcodec-dev \
        libavformat-dev \
        libavutil-dev \
        libboost-filesystem-dev \
        libboost-iostreams-dev \
        libboost-program-options-dev \
        libboost-system-dev \
        libbullet-dev \
        libcollada-dom-dev \
        libfreetype6-dev \
        libgl-dev \
        libicu-dev \
        libjpeg-dev \
        libluajit-5.1-dev \
        liblz4-dev \
        libmygui-dev \
        libopenal-dev \
        libopenscenegraph-dev \
        libpng-dev \
        libqt5opengl5-dev \
        libqt5svg5 \
        libqt5svg5-dev \
        librecast-dev \
        libsdl2-dev \
        libsqlite3-dev \
        libswresample-dev \
        libswscale-dev \
        libtinyxml-dev \
        libunshield-dev \
        libyaml-cpp-dev \
        ninja-build \
        qttools5-dev \
        qttools5-dev-tools
