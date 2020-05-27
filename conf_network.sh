#!/bin/bash

cd $NETWORK
docker stop logspout
./network.sh down
./network.sh up createChannel -ca -s couchdb
