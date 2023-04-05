#!/bin/bash

HOME_DIR=$(pwd)

git clone https://github.com/ducaale/xh.git
cd xh
cargo build

RETURN_CODE=$?
if [ $RETURN_CODE -eq 0 ]; then
    echo "Compilation works [Return code 0]"
else
    echo "Compilation doesn't work"
    exit 1
fi

cd $HOME_DIR
rm -rf xh
exit 0