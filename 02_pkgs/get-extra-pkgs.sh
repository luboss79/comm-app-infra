#!/bin/bash
echo "#!/bin/bash" > install-extra-pkgs.sh

epel_pkgs=$(yum list installed | grep @epel | grep -v nagios | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')
remi_pkgs=$(yum list installed | grep @remi | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')
percona_pkgs=$(yum list installed | grep @percona | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')
influxdb_pkgs=$(yum list installed | grep @influxdb | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')
ius_pkgs=$(yum list installed | grep @ius | awk '{print $1}' | awk 'BEGIN { ORS = " " } { print }')

# EPEL pkgs
echo "sudo yum install -y $epel_pkgs" >> install-extra-pkgs.sh

# PHP pkgs
echo "sudo yum install -y $remi_pkgs" >> install-extra-pkgs.sh

# Mysql pkgs
echo "sudo yum install -y $percona_pkgs" >> install-extra-pkgs.sh

# Influxdb - telegraf pkgs
echo "sudo yum install -y $influxdb_pkgs" >> install-extra-pkgs.sh

# IUS - mongodb
echo "sudo yum install -y $ius_pkgs" >> install-extra-pkgs.sh

