#!/bin/bash

cd 02_pkgs/
./get-extra-pkgs.sh

cd ../03_users/
./get-users.sh

cd ../04_kernel/
./get-sysctl-file.sh

cd ../05_iptables/
./get-iptables-file.sh

cd ../06_crontab/
./get-crontab-file.sh

cd ../07_services/
./get-systemd-services.sh

cd ../08_sudoers/
./get-sudo-file.sh
