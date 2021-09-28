#!/bin/bash
epel_pkgs=$(yum list installed | grep @epel | grep -v nagios | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')

sudo yum install -y epel-release
sudo yum install -y zip git unzip curl lsof mc vim-enhanced wget telnet bind-utils screen bzip2 net-tools cronie bash-completion rpcbind nfs-utils libcurl yum-plugin-versionlock lvm2 authconfig acl sysstat epel-release iptables-services htop

# EPEL pkgs
sudo yum install -y $epel_pkgs
