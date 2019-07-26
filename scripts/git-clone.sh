#!/bin/bash
REPOSITORIES=(NPost NPost.APIGateway NPost.Services.Deliveries NPost.Services.Parcels NPost.Services.Routing)
for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Cloning the repository: $REPOSITORY
	 echo ========================================================
	 REPO_URL=https://github.com/devmentors/$REPOSITORY.git
	 git clone $REPO_URL
	 cd $REPOSITORY && cd ..
done