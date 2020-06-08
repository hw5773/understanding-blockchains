#!/bin/bash

NETWORK=${PWD}/test-network
cd $NETWORK
docker stop logspout
sudo chown -R $USER:$USER *
./network.sh down
./network.sh up createChannel -ca -s couchdb
