#!/usr/bin/env bash

INPUT_FILE="test2.txt"


declare -A maper=( ["one"]=1 ["two"]=2 ["three"]=3 ["four"]=4 ["five"]=5 ["six"]=6 ["seven"]=7 ["eight"]=8 ["nine"]=9 )

extraction() {
    local line=$1

    # Replace each word using awk with word boundary checks
    line=$(echo "$line" | awk '{
        gsub(/\<seven\>/, "7");
        gsub(/\<three\>/, "3");
        gsub(/\<eight\>/, "8");
        gsub(/\<five\>/, "5");
        gsub(/\<nine\>/, "9");
        gsub(/\<four\>/, "4");
        gsub(/\<six\>/, "6");
        gsub(/\<two\>/, "2");
        gsub(/\<one\>/, "1");
        print;
    }')

    echo "$line" >&2

    local first=$(echo "$line" | grep -o -E '[0-9]' | head -1)
    local last=$(echo "$line" | grep -o -E '[0-9]' | tail -1)

    if [[ -n $first && -n $last ]]; then
        echo "first digit: $first, last digit: $last" >&2
        echo $((first * 10 + last))
    else
        echo 0
    fi
}

total=0
while IFS= read -r line; do
    value=$(extraction "$line")
    total=$((total + value))
done < "$INPUT_FILE"

echo "Sum of values: $total"