#!/usr/bin/env bash

sudo echo nameserver 208.67.222.222 > /etc/resolv.conf

# Ansible
if ! [ -x "$(command -v config)" ]; then
    apt-get update
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
    echo "-----Instaling Ansible"
else
  echo "-----Ansible already installed"
fi
sudo apt-get -y install python-simplejson
sudo apt-get -y install aptitude
# executing trough ansible whole installation system
ansible-playbook -i "localhost," -c local /vagrant/config/ansible/playbook.yml


# bulid applications