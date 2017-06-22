#!/usr/bin/env bash

sudo echo nameserver 208.67.222.222 > /etc/resolv.conf

# Ansible
if ! [ -x "$(command -v config)" ]; then
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
    echo "-----Instaling Ansible"
else
  echo "-----Ansible already installed"
fi

# executing trough ansible whole installation system
ansible-playbook -i "localhost," -c local /vagrant/config/ansible/playbook.yml

# adding commands
alias exe_playbook='ansible-playbook -i "localhost," -c local /vagrant/config/ansible/playbook.yml'

# bulid applications