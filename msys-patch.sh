#!/bin/bash

P=$PWD

cd $VER

echo "VER2=${VER}_msys2" >> "$GITHUB_ENV"

for a in $P/wine-msys-patch/*.patch
do
patch -p1 -i $a || exit 255
done
