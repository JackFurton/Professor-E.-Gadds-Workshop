#!/bin/sh

#WIP gum script! pre-req install gum

WORKING=$(gum confirm "For work?")

if [ "$WORKING" = "yes" ]; then
    BRANCH_NUM=$(gum input --placeholder "Insert branch number")
    PREFIX="DTA-$BRANCH_NUM"
else
    PREFIX=""
fi

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")
SCOPE=$(gum input --placeholder "scope")

test -n "$SCOPE" && SCOPE="($SCOPE)"

SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")

gum confirm "Commit changes?" && git commit -m "$PREFIX $SUMMARY" -m "$DESCRIPTION"
