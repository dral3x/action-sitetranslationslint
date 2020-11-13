#!/bin/bash

# Exit when any command fails
set -e

# Build image
docker build -t action-sitetranslationslint .

# Run tool on test projects
#TODO echo "Testing CleanProject..."

#TODO echo "Testing WarningProject..."

echo "Testing ErrorProject..."
diff <(docker run --rm action-sitetranslationslint -v test/ErrorProject:test/ErrorProject -w test/ErrorProject|sort) test/ErrorProject/expected.txt
STATUS=$(docker run --rm action-sitetranslationslint -v test/ErrorProject:test/ErrorProject -w test/ErrorProject &>/dev/null; echo $?)
if [ $STATUS -ne 2 ]; then
    echo "Wrong exit code for ErrorProject: $STATUS"
    exit 1
fi