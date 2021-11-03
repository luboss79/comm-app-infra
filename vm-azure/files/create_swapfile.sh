#!/bin/sh
if [ ! -f '/mnt/swapfile' ]; then
fallocate --length 4GiB /mnt/swapfile
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapon /mnt/swapfile
swapon -a 
else
swapon /mnt/swapfile; fi

