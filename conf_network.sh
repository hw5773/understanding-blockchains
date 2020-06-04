#!/bin/bash

NETWORK=${PWD}/test-network
cd $NETWORK
docker stop logspout
./network.sh down
./network.sh up createChannel -ca -s couchdb
