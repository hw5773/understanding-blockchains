#!/bin/bash

docker stop logspout
sudo chown -R $USER:$USER *
NETWORK=${PWD}/test-network
cd $NETWORK
./network.sh down
