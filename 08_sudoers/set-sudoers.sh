#!/bin/bash
sudo cp -f origin/sudoers /etc/sudoers
sudo cp -fr origin/sudoers.d /etc/
sudo chmod 440 /etc/sudoers.d/*
