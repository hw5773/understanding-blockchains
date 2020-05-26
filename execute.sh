#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
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

# Configure the Network
#./conf_network.sh

# TODO: Please Set the Chaincode to Peers


# TODO: Please Install any Dependencies and Generate Binaries of Client Applications (or Transactions), if needed


# Test Clients and the Chaincode
# TODO: Please Set the Environment Variables to Communicate with the peer0.org1.example.com
# 1) Change Environment Variables to communicate with peer0.org1.example.com

# 2) Create the counters
if [ "$LANG" = "node" ]; then
  node client/createCounter.js counter1 up 0
  node client/createCounter.js counter2 down 0
elif [ "$LANG" = "java" ]; then
  java client/CreateCounter counter1 up 0
  java client/CreateCounter counter2 down 0
fi

# 3) Update the counters 
if [ "$LANG" = "node" ]; then
  node client/updateCounter.js counter1
  node client/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  java client/UpdateCounter counter1
  java client/UpdateCounter counter2
fi

# TODO: Please Set the Environment Variables to Communicate with the peer0.org2.example.com
# 4) Change Environment Variables to communicate with peer0.org2.example.com

# 5) Read the counters
if [ "$LANG" = "node" ]; then
  node client/updateCounter.js counter1
  node client/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  java client/UpdateCounter counter1
  java client/UpdateCounter counter2
fi
