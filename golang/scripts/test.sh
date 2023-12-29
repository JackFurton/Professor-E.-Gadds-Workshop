#!/bin/sh

EXECUTE_FILE=$(gum file)
LE_CONFIRMER=$(gum confirm "Execute file?" && bash -x $EXECUTE_FILE)
