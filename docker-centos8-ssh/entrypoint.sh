#!/usr/bin/env bash

# ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key > /dev/null 2>&1
# ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key > /dev/null 2>&1
# ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key > /dev/null 2>&1
#
# /usr/sbin/sshd
#
# mkdir ~/.ssh
# ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
# chmod 0600 ~/.ssh/authorized_keys
#
# echo "alias ll='ls -lh' ">>/root/.bashrc
# echo "alias cp='cp' ">>/root/.bashrc

# /bin/bash
/usr/sbin/sshd

exec $@
