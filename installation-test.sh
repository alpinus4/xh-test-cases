#!/bin/bash

TEMP_INSTALLATION_DIR=tmp-install
HOME_DIR=$(pwd)

mkdir $TEMP_INSTALLATION_DIR
if [ -d "$TEMP_INSTALLATION_DIR" ]; then
    echo "Created temporary installation dir"
fi

cd $TEMP_INSTALLATION_DIR
echo "Install to: $(pwd)"
curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh

if [ -f "xh" ] && [ -f "xhs" ]; then
    echo -e "\n\ninstallation works properly"
else
    echo -e "installation doesn't work"
fi


cd $HOME_DIR
rm -rf $TEMP_INSTALLATION_DIR