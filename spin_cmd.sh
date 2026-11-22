#!/usr/bin/env bash
set -e
TAG="frosty-harbor-bright-cedar"
LIB="logged-cabin.a"
URL="https://github.com/qiyiqiuyinuoi/densemeadow/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
