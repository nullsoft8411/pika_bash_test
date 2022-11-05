#!/bin/bash
version="0.2"
getVer=$(curl https://raw.githubusercontent.com/nullsoft8411/pika_bash_test/main/version.txt)
gitVersion=$(echo "$getVer" | awk -F : '{ print $2 }')
if [[ $version < $gitVersion ]]; then
printf "Update ist vorhanden: Aktuelle Version ${$version} verfügber ${gitVersion}"
cp /home/nullsoft/pika_bash_test/test.sh old_test.sh
rm  /home/nullosft/pika_bash_test/test.sh
wget https://raw.githubusercontent.com/nullsoft8411/pika_bash_test/main/test.sh > /dev/null 2>&1
printf "Script wurde aktulisiert auf $gitVer\n"
else
printf "Aktuelle Version: $version - Git Version $gitVersion\n"
fi
