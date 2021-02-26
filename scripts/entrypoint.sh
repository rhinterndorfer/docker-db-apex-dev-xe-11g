#!/bin/bash

# set environment
. /scripts/setenv.sh

# install
if ls /scripts/install_main.sh 1> /dev/null 2>&1; then
    . /scripts/install_main.sh
fi
