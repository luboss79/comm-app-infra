#!/bin/bash
sudo mkdir origin
sudo cp /etc/crontab origin/
sudo echo >> origin/crontab
sudo echo "### Takymto komentarom su vypnute joby, ktore bude treba povolit po nainstalovani aplikacii" >> origin/crontab
