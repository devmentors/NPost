#!/bin/bash
REPOSITORIES=(NPost NPost.APIGateway NPost.Services.Deliveries NPost.Services.Parcels NPost.Services.Routing)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Updating the repository: $REPOSITORY
	 echo ========================================================
	 cd $REPOSITORY && git checkout develop && git pull && git checkout master && git pull && cd ..
done