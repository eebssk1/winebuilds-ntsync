#!/bin/bash

if [ "x$VER2" != "x" ]; then
VER=$VER2
echo "VER=${VER2}" >> "$GITHUB_ENV"
fi

mv out ${VER}_rel || exit 128
tar --bz -cf ${VER}_rel.tb2 ${VER}_rel || exit 128