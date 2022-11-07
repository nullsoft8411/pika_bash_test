#!/bin/bash
version="0.3"
scriptPath=$(pwd)
#curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/version.txt.sh/raw?ref=main > test.sh
gitVersion=$(curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/version.txt/raw?ref=main  | awk -F : '{ print $2 }')
forceUpdate=$(curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/version.txt/raw?ref=main  | awk -F = '{ print $2 }')
if [[ $version < $gitVersion ]]; then
if [[ $forceUpdate == "true" ]]; then
printf "Das script wird auf $gitVersion geupdated"
curl --header 'Private-Token: glpat-y3EsZ23s15tcuH_Xk7rT' https://gitlab.com/api/v4/projects/40850742/repository/files/test.sh/raw?ref=main > test.sh
printf "Script wurde aktulisiert auf $gitVer\n"
else
printf "Ein neue version ist vorhanden. Script Update? [ja]"
if [[ ${test:-} ]]; then
ja
fi

fi
else
printf "Aktuelle Version: $version - Git Version $gitVersion\n"
fi
