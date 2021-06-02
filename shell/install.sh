#!/bin/bash

###
### Install and Run Service
###

### Clone Project
cd ~
mkdir workspace
cd workspace
git clone https://github.com/BOLT-Protocol/TideBit-Network-Docs

### Build Service
cd TideBit-Network-Docs
npm i

### Start Service
pm2 start . --name TideBit Bridge
echo "pm2 start . --name TideBit Docs" | sudo tee -a /etc/fstab
