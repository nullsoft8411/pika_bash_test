#!/bin/bash
version="0.3"
scriptPath=$(pwd)
#curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/version.txt.sh/raw?ref=main > test.sh
gitVersion=$(curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/version.txt.sh/raw?ref=main  | awk -F : '{ print $2 }')
if [[ $version < $gitVersion ]]; then
if [[  ]]
printf "Update ist vorhanden: Aktuelle Version ${$version} verfügber ${gitVersion}"
curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/test.sh/raw?ref=main > test.sh
printf "Script wurde aktulisiert auf $gitVer\n"
else
printf "Aktuelle Version: $version - Git Version $gitVersion\n"
fi
