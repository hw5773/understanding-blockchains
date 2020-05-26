#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

if [ "$LANG" = "node" ]; then
  echo "node client/createCounter.js counter1 up 0"
  node client/createCounter.js counter1 up 0
  echo "node client/createCounter.js counter2 down 0"
  node client/createCounter.js counter2 down 0
elif [ "$LANG" = "java" ]; then
  echo "java client/CreateCounter counter1 up 0"
  java client/CreateCounter counter1 up 0
  echo "java client/CreateCounter counter2 down 0"
  java client/CreateCounter counter2 down 0
fi
