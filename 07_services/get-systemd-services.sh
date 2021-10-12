#!/bin/bash

systemd_files=$(find /etc/systemd/system/ -type f | xargs egrep "opt|home" | awk -F\: '{print $1 }' | uniq)
mkdir -p origin

#osetrit ak je to CentOS6 - systemd neexistuje
for file in $systemd_files; do
	cp $file origin/
done

