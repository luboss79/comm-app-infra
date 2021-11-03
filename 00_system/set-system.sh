#!/bin/bash

# timezone UTC
sudo timedatectl set-timezone UTC

# chrony
sudo yum install chrony -y
sudo systemctl start chronyd
sudo systemctl enable chronyd

# SELinux
sudo setenforce 0
sudo sed -i s/SELINUX=enforcing/SELINUX=permissive/g /etc/selinux/config

# locale
sudo cat << EOF > /etc/locale.conf
LANG=en_US.UTF-8
LC_PAPER=sk_SK.UTF-8
LC_ADDRESS=sk_SK.UTF-8
LC_MONETARY=sk_SK.UTF-8
LC_NUMERIC=sk_SK.UTF-8
LC_TELEPHONE=sk_SK.UTF-8
LC_IDENTIFICATION=sk_SK.UTF-8
LC_MEASUREMENT=sk_SK.UTF-8
LC_NAME=sk_SK.UTF-8
EOF

