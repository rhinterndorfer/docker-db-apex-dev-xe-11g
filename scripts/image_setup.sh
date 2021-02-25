#!/bin/bash

# folder permissions
chmod -R 777 /files
chmod -R 777 /scripts

# update
apt-get update
apt-get -y upgrade