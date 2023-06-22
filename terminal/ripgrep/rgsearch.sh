#!/bin/bash

WORD_ONLY=0
IGNORE_CASE=0

usage() {
cat << EOF
Usage: ${0##*/} [-w] [-i] search_term

This script uses rg (ripgrep) to search for a given term in files. 
By default, it will search for the term anywhere in a file.

Available options:

-h          Display this help and exit.
-w          Only match whole words.
-i          Perform case-insensitive matching.

EOF
}

# Parse options to the `rg` command
while getopts ":wih" opt; do
  case ${opt} in
    w )
      WORD_ONLY=1
      ;;
    i )
      IGNORE_CASE=1
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

# Prepare rg options
RG_OPTIONS=""
if [ $WORD_ONLY -eq 1 ]; then
    RG_OPTIONS="${RG_OPTIONS} -w"
fi
if [ $IGNORE_CASE -eq 1 ]; then
    RG_OPTIONS="${RG_OPTIONS} -i"
fi

# execute ripgrep
rg ${RG_OPTIONS} --color=always "$1" | less -R

