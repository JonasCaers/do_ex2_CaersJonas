#!/usr/bin/env bash
apt-get update
apt-get -y install ansible sshpass

ln -sf /vagrant/hosts /etc/ansible/hosts

rm /home/vagrant/.ssh/known_host

KNOW_HOSTS_FILE="/home/vagrant/.ssh/known_hosts"

ssh-keyscan 10.0.15.21 >> $KNOW_HOSTS_FILE 
ssh-keyscan 10.0.15.22 >> $KNOW_HOSTS_FILE
ssh-keyscan localhost >> $KNOW_HOSTS_FILE 
chown vagrant:vagrant $KNOW_HOSTS_FILE 

