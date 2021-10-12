#!/bin/bash

# 4GB swap
sudo dd if=/dev/zero of=/mnt/swapfile bs=1024 count=4194304 
sudo chmod 600 /mnt/swapfile 
sudo mkswap /mnt/swapfile 
sudo swapon /mnt/swapfile 
free
