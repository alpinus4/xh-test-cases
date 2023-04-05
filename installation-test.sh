#!/bin/bash

echo "Installing xh..."
echo "executing 'cargo install xh'"
cargo install xh
INSTALLATION_RETURN_CODE=$?

if [ $INSTALLATION_RETURN_CODE -eq 0 ]; then
    echo "Installation has succeded"
else
    echo "Installation has failed"
    exit 1
fi

echo "Uninstalling xh..."
echo "executing 'cargo uninstall'"
cargo uninstall xh
UNINSTALLATION_RETURN_CODE=$?

if [ $UNINSTALLATION_RETURN_CODE -eq 0 ]; then
    echo "Uninstallation has succeded"
else
    echo "Uninstallation has failed"
    exit 1
fi

exit 0