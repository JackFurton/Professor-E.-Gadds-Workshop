#!/bin/bash

WORD_ONLY=0

usage() {
cat << EOF
Usage: ${0##*/} [-w] search_term (matches whole words)
Usage: ${0##*/} search_term (multi-word search)

This script uses rg (ripgrep) to search for a given term in files. 
By default, it will search for the term anywhere in a file.

Available options:

-h          Display this help and exit.
-w          Only match whole words.

EOF
}

# Parse options to the `rg` command
while getopts ":wh" opt; do
  case ${opt} in
    w )
      WORD_ONLY=1
      ;;
    h )
      usage
      exit 0
      ;;
    \? )
      echo "Invalid option: $OPTARG" 1>&2
      usage
      exit 1
      ;;
  esac
done
shift $((OPTIND -1))

# check if argument is provided
if [ -z "$1" ]; then
    echo "Please provide a search term."
    usage
    exit 1
fi

# execute ripgrep
if [ $WORD_ONLY -eq 1 ]
then
    rg -w --color=always "$1" | less -R
else
    rg --color=always "$1" | less -R
fi

