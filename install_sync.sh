#!/usr/bin/env bash
set -e
REPO="lumjselle/libwoolsafe"
LIB="pure-clock.a"
URL="https://github.com/${REPO}/releases/download/hidden-forest-eager-garden/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
