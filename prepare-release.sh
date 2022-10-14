#!/bin/bash
set -eo pipefail


echo " ******** PREPARE RELEASE *******"
#mkdir "dist"

if [ -z ${1+x} ]; then
    echo "No version version number passed as an argument to the script."
    exit 1
fi

echo "Creating a release for version ${1}."
zip "dist/test-${1}.zip" test.txt
