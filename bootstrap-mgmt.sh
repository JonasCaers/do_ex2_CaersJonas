#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible


cp -a /vagrant/examples/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

cat >> /etc/hosts <<EOL

10.0.15.10  mgmt
10.0.15.11  lb
10.0.15.21  web1
10.0.15.22  web2

EOL