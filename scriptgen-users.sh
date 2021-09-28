#!/bin/bash
cat /etc/passwd | egrep -v "nologin|root|sync|halt|shutdown" | awk -F\: '{print "useradd " $1" -u "$3" -g "$4" -d "$6" -s "$7}' >> create-users.sh
