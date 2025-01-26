#!/bin/bash

mv out ${VER}_rel || exit 128
tar --bz -cf ${VER}_rel.tb2 ${VER}_rel || exit 128