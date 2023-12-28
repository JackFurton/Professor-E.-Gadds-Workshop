#!/bin/sh

#scrip requires fzf to be installed!

read -p "Would you like to git add --all (yes/no:) " GIT_ADD

if [ "$GIT_ADD" = "yes" ]; then
    git add --all
fi
    
read -p "For work? (yes/no): " WORKING

if [ "$WORKING" = "yes" ]; then
    read -p "Insert branch number: " BRANCH_NUM
    PREFIX="DTA-$BRANCH_NUM"
else
    PREFIX=""
fi

TYPE=$(echo "fix feat docs style refactor test chore revert" | tr ' ' '\n' | fzf --prompt "Choose type: ")
read -p "scope: " SCOPE

test -n "$SCOPE" && SCOPE="($SCOPE)"

read -p "Summary of this change ($TYPE$SCOPE: ): " SUMMARY
echo "Details of this change (Enter && CTRL+D to finish)"
DESCRIPTION=$(</dev/stdin)

read -p "Commit changes? (yes/no): " CONFIRM
if [ "$CONFIRM" = "yes" ]; then
    git commit -m "$PREFIX $TYPE$SCOPE: $SUMMARY" -m "$DESCRIPTION"
fi
