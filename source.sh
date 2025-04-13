#!/bin/bash

P=$PWD

VER="wine-10.5"
wget https://dl.winehq.org/wine/source/10.x/${VER}.tar.xz || exit 128
tar --xz -xf ${VER}.tar.xz || exit 128
rm -rf ${VER}.tar.xz

git clone -b v10.5 https://github.com/wine-staging/wine-staging || exit 128
pushd wine-staging
./staging/patchinstall.py DESTDIR="$P/${VER}" --all || exit 128
popd
rm -rf wine-staging
echo "VER=${VER}" >> "$GITHUB_ENV"
exit 0


