#!/bin/bash
sudo cp origin/iptables /etc/sysconfig/iptables
sudo systemctl enable iptables
sudo systemctl restart iptables
