#!/bin/bash
if [ "$1" == "" ]; then
    echo "Pass directory containing emojis in .png format as argument."
    exit 1
fi

make EMOJI=Catmoji EMOJI_SRC_DIR=$1 FLAGS= BODY_DIMENSIONS=76x72 BYPASS_SEQUENCE_CHECK='True' -j
