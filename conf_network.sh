#!/bin/bash

CHAINCODE=counter.tar.gz
ROOT=${PWD}
NETWORK=${ROOT}/test-network

export FABRIC_CFG_PATH=${ROOT}/config
export IMAGE_TAG=2.1.0
export COMPOSE_PROJECT_NAME=snu
export PATH=$PATH:${PWD}/bin

cd $NETWORK
docker stop logspout
./network.sh down
./network.sh up createChannel -ca -s couchdb
