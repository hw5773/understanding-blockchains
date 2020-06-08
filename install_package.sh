#!/bin/bash

sudo apt-get update
wget https://services.gradle.org/distributions/gradle-6.4.1-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
echo "export GRADLE_HOME=/opt/gradle/gradle-6.4.1" > env
echo "export PATH=/opt/gradle/gradle-6.4.1/bin:$PATH" >> env

sudo apt install openjdk-8-jdk
sudo apt install maven
