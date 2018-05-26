#!/usr/bin/env bash
# Build all the docker images in all subdirectories

dockerfiles=$(find . -type f -printf "%P\n" | grep 'Dockerfile')
for dockerfile in $dockerfiles
do
	img_name=$(dirname "$dockerfile")
	docker build -t "$img_name" -f $dockerfile . >/dev/null
	if [[ $? != 0 ]]
	then
		echo -e "\u2717 $img_name"
	else
		echo -e "\u2714 $img_name"
	fi
done
