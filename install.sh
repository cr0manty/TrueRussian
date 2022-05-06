#!/bin/bash

readonly bundleName="TrueRussian.bundle"
readonly bundlePath="$HOME/Library/Keyboard Layouts"

# CODE error:
# -1 - bundle not exist in current folder
# -2 - Keyboard Layouts folder doesn't exist
# -3 - Bundle already installed

if [ ! -d "$bundleName" ]
then
 echo "Bundle not found."
 exit -1
fi

if [ ! -d "$bundlePath" ]
then
    echo "Keyboard Layouts folder doesn't exist"
    exit -2
fi

if [ -s "$bundlePath/$bundleName" ]
then
 echo "Bundle '$bundleName' already installed"
 exit -3
fi

cp -R "$bundleName" "$bundlePath"

exit 0
