FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        git build-essential cmake ninja-build \
        libopenal-dev libopenscenegraph-dev libbullet-dev libsdl2-dev \
        libmygui-dev libunshield-dev liblz4-dev libtinyxml-dev libqt5opengl5-dev \
        libboost-filesystem-dev libboost-program-options-dev libboost-iostreams-dev \
        libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev \
        && \
    apt clean

VOLUME /app
WORKDIR /app
