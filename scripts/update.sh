#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

cd $APPLICATION
if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/application/updateCounter.js counter1"
  node ${ROOT}/application/updateCounter.js counter1
  echo "node ${ROOT}/application/updateCounter.js counter2"
  node ${ROOT}/application/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java -jar ${ROOT}/application/UpdateCounter.jar counter1"
  java -jar ${ROOT}/application/UpdateCounter.jar counter1
  echo "java -jar ${ROOT}/application/UpdateCounter.jar counter2"
  java -jar ${ROOT}/application/UpdateCounter.jar counter2
fi
