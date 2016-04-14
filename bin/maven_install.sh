#!/bin/bash
set -ex
wget http://apache.spinellicreations.com/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -zxf apache-maven-3.3.9-bin.tar.gz
cp -R apache-maven-3.3.9 /usr/local
ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn
