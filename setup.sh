#!/bin/sh
RED='\033[0;31m'
GRAY='\033[1;30m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
applicationName=Datasker
frontendRepo=git@github.com:civicledger/auditor-frontend.git
apiRepo=git@github.com:civicledger/aud-api.git
infraRepo=git@github.com:civicledger/aud-infra.git
adminRepo=false

if $infraRepo
then
    if [ -d "./infra" ]
    then
        echo "${YELLOW}Infra repo has already been cloned${NC}"
    else
        echo "Cloning infrastructure repo"
        git clone $infraRepo infra
        cp infra/docker-compose.yml ./docker-compose.yml
        echo -e "${GREEN}Infrastructure repo cloned${NC}"
    fi
else
    echo "No infrastructure repo found"
fi

if [ -d "./frontend" ]
then
    echo "${YELLOW}Frontend repo has already been cloned${NC}"
else
    echo "Cloning frontend repo"
    git clone $frontendRepo frontend
    echo -e "${GREEN}Frontend repo cloned${NC}"
fi

if [ -d "./api" ]
then
    echo "${YELLOW}API repo has already been cloned${NC}"
else
    echo "Cloning api repo"
    git clone $apiRepo api
    echo -e "${GREEN}API cloned${NC}"
fi


if $adminRepo
then
    if [ -d "./admin" ]
    then
        echo "${YELLOW}Admin repo has already been cloned${NC}"
    else
        echo "Cloning admin repo"
        git clone $adminRepo admin
        echo -e "${GREEN}Admin repo cloned${NC}"
    fi
else
    echo "No admin repo found"
fi

echo -e "${GREEN}${applicationName}${NC} should now be set up. Run ${GRAY}docker-compose up${NC} to launch application."