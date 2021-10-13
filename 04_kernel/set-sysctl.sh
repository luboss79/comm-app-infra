#!/bin/bash
sudo cp origin/sysctl.conf /etc/sysctl.conf

# Disable IPV6
echo >> /etc/sysctl.conf
echo "Disable IPV6" >> /etc/sysctl.conf
echo "net.ipv6.conf.eth0.disable_ipv6 = 1" >> /etc/sysctl.conf

