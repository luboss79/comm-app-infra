#!/bin/bash
sudo cp origin/crontab /etc/crontab
sudo systemctl enable crond
sudo systemctl restart crond
