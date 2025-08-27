#!/bin/bash

P=$PWD

VER="wine-10.13"
COMM="956fb6d3774a2b2bac54b22c4edd3d00f961e7ba"
git clone https://github.com/Kron4ek/wine-tkg -b ntsync $VER || exit 128
pushd $VER
git checkout $COMM || exit 128
popd

echo "VER=${VER}" >> "$GITHUB_ENV"
exit 0


