#!/bin/bash
set -ex
apt-get remove scala-library scala
wget http://www.scala-lang.org/files/archive/scala-2.11.4.deb
dpkg -i scala-2.11.4.deb
apt-get update
apt-get install scala
