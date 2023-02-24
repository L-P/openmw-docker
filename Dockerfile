FROM ubuntu:22.04

VOLUME /app
WORKDIR /app

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        git build-essential cmake ninja-build \
        libopenal-dev libopenscenegraph-dev libbullet-dev libsdl2-dev \
        libmygui-dev libunshield-dev liblz4-dev libtinyxml-dev libqt5opengl5-dev \
        libboost-filesystem-dev libboost-program-options-dev libboost-iostreams-dev \
        libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev \
        libyaml-cpp-dev libluajit-5.1-dev libsqlite3-dev
