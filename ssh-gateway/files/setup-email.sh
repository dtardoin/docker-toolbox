#!/bin/bash

user=$1
mkdir /home/$user/bin
chown $user:$user /etc/msmtp/$user-citex0 
chmod 600 /etc/msmtp/*
cp /root/login-mail.sh /home/$user/bin
cp /root/bash-rc /home/$user/.bashrc
echo "nameserver 8.8.8.8" > /etc/resolv.conf
chmod 444 /etc/resolv.conf
