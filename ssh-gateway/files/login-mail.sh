#!/bin/bash
#Script to auto-email when someone logs in

user="$(/bin/whoami)"
log="$(/usr/bin/lastlog|grep $user)"

echo -e "Subject: $user logged in to ssh gateway\r\n\r\nThe last log looks like this:\r\n $log"|msmtp -t <email address> --file=/etc/msmtp/citex0
