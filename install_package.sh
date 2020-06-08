#!/bin/bash

sudo apt-get update
wget https://services.gradle.org/distributions/gradle-6.4.1-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
echo "export GRADLE_HOME=/opt/gradle/gradle-6.4.1" > env
echo "export PATH=/opt/gradle/gradle-6.4.1/bin:$PATH" >> env
source ./env

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt install openjdk-11-jdk
