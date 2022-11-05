#!/bin/bash
version="0.3"
scriptPath=$(pwd)
rm ${scriptPath}/version.txt || printf "es ist ein fehler aufgetreten"; exit 0;
wget https://raw.githubusercontent.com/nullsoft8411/pika_bash_test/main/version.txt > /dev/null 2>&1
gitVersion=$(awk -F : '{ print $2 }' $scriptPath/version.txt)
if [[ $version < $gitVersion ]]; then
printf "Update ist vorhanden: Aktuelle Version ${$version} verfügber ${gitVersion}"
cp ${scritPath}/test.sh $scriptPath/old_test.sh && rm  $scriptPath/test.sh
wget https://raw.githubusercontent.com/nullsoft8411/pika_bash_test/main/test.sh > /dev/null 2>&1
printf "Script wurde aktulisiert auf $gitVer\n"
else
printf "Aktuelle Version: $version - Git Version $gitVersion\n"
fi
