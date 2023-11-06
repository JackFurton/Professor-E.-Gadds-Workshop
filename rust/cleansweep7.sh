#!/usr/bin/env bash

for dir in $(find . -type d -not -path '*/\.*')
do
    if [ -f $dir/Cargo.toml ]
    then
        echo "Cleaning $dir"
        cd $dir
        cargo clean
        cd - > /dev/null
    fi
done
