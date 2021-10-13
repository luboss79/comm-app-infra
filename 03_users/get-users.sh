#!/bin/bash
echo "#!/bin/bash" > create-users.sh
cat /etc/passwd | egrep -v "nologin|root|sync|halt|shutdown|cmkagent|praetorian|gpscom|hotline|posam|mongod|patrik|matthew|pavol.prazenka|ron|commander-test|martin-test|kotyk|pavel.ondra|itelegraf|administrator" | awk -F\: '{print "sudo useradd " $1" -u "$3" -d "$6" -s "$7}' >> create-users.sh
