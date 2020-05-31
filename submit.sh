#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 [Student Number]"
  echo "Example: ./submit.sh 2020-11223"
  exit 1
fi

STUDENT=$1

mkdir $STUDENT
mkdir -p $STUDENT/chaincode
mkdir -p $STUDENT/application

cp -rf chaincode/* $STUDENT/chaincode
cp -rf client/* $STUDENT/application
cp execute.sh $STUDENT

tar czvf $STUDENT.tar.gz $STUDENT
rm -rf $STUDENT
