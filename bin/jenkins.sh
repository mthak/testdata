#!/bin/bash
set -ex
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
apt-get -y update
apt-get -y remove jenkins jenkins-common
apt-get -y install jenkins
echo 'jenkins ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
mkdir -p /data
perl -pi -e 's/JENKINS_HOME=.*/JENKINS_HOME=\/data\/jenkins/g' /etc/default/jenkins
mkdir -p /mnt/jenkins
chmod -R 777 /mnt/jenkins
sudo -u jenkins mkdir -p /var/lib/jenkins/.ssh
sudo -u jenkins ssh-keygen -t rsa -N "" -f /var/lib/jenkins/.ssh/id_rsa
ln -s /mnt/jenkins /data/jenkins
/etc/init.d/jenkins restart
