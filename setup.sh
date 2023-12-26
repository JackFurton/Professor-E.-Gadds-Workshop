#!/usr/bin/env bash
#
#setup a venv to avoid systemwide python package installs
#
#run the following!
#source setup.sh

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install the necessary packages
pip install -r requirements.txt

#run the following to deactivate venv
#deactivate
