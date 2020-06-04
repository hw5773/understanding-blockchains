#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [the language used to implement applications (node/java)]" >&2
  exit 1
fi

LANG=$1

if [ "$LANG" = "node" ]; then
  echo "The program is implemented with NodeJS"
elif [ "$LANG" = "java" ]; then
  echo "The program is implemented with Java"
else
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

export ROOT=${PWD}
export NETWORK=${ROOT}/test-network
export APPLICATION=${ROOT}/application
export ANSWER=${ROOT}/answer
export ANSWER_FILE=${ANSWER}/answer

export FABRIC_CFG_PATH=${ROOT}/config
export IMAGE_TAG=2.1.0
export COMPOSE_PROJECT_NAME=snu
export PATH=$PATH:${PWD}/bin

# Configure the Network
echo "SNU Blockchain> Configure the test network"
./conf_network.sh

# Please Set the Chaincode to Peers, following the Lifecycle of the Chaincode
# Please refer to https://hyperledger-fabric.readthedocs.io/en/release-2.1/deploy_chaincode.html#package-the-smart-contract
# 1) TODO 1: Package the Chaincode

# 2) TODO 2: Install the Chaincode

# 3) TODO 3: Approve a Chaincode Definition

# 4) TODO 4: Committing the Chaincode Definition to the Channel


# TODO 5: Please Install any Dependencies and Generate Binaries of Client Applications (or Transactions), if needed
# ex) npm install or javac application/readCounter.java


# Test Clients and the Chaincode
# 1) Enroll the administrator
echo "SNU Blockchain> Enroll the administrator"
cd $APPLICATION
test -f package-lock.json || npm install
rm $APPLICATION/wallet/*
node enrollAdmin.js

# 2) Register the appUser
echo "SNU Blockchain> Register the user"
cd $APPLICATION
node registerUser.js

# 3) Create the counters
echo "SNU Blockchain> Create the counters"
cd $ROOT
scripts/create.sh $LANG

# 4) Update the counters 
echo "SNU Blockchain> Update the counters"
scripts/update.sh $LANG

# 5) Read the counters
echo "SNU Blockchain> Read the counters"
rm ${ANSWER_FILE}
scripts/read.sh $LANG > ${ANSWER_FILE}

echo "SNU Blockchain> Clean the test network"
./finish_network.sh
