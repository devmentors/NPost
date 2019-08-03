#!/bin/bash
REPOSITORIES=(NPost NPost.APIGateway NPost.Services.Deliveries NPost.Services.Parcels NPost.Services.Routing)

echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nCloning repository: {}\n========================================================\n"; git clone https://github.com/devmentors/{}.git'