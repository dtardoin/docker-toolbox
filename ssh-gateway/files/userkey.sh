#!/bin/bash
#script to add users/directories with correct perms and set them up for ssh-keys
user=$1

/sbin/useradd $user; 
mkdir /home/$user/.ssh;
cat /root/keys/${user}_authorized_keys > /home/$user/.ssh/authorized_keys;
chown $user:$user -R /home/$user/.ssh;
chmod 700 /home/$user/.ssh;chmod 600 /home/$user/.ssh/*;
