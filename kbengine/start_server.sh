#!/bin/sh

export KBE_ROOT="/kbengine"
export KBE_RES_PATH="$KBE_ROOT/kbe/res/:$KBE_ROOT/assets:$KBE_ROOT/assets/res/:$KBE_ROOT/assets/scripts/"
export KBE_BIN_PATH="$KBE_ROOT/kbe/bin/server/"

echo KBE_ROOT = \"${KBE_ROOT}\"
echo KBE_RES_PATH = \"${KBE_RES_PATH}\"
echo KBE_BIN_PATH = \"${KBE_BIN_PATH}\"


$KBE_BIN_PATH/machine --cid=2129652375332859700 --gus=1


