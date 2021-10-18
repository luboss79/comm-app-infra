#!/bin/bash
sudo cp origin/sysctl.conf /etc/sysctl.conf

# Disable IPV6
sudo sh -c 'echo >> /etc/sysctl.conf'
sudo sh -c 'echo "Disable IPV6" >> /etc/sysctl.conf'
sudo sh -c 'echo "net.ipv6.conf.eth0.disable_ipv6 = 1" >> /etc/sysctl.conf'

