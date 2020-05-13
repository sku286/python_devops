#!/bin/sh

mkdir kiwee

# defining the branch to pull code
BRANCH = ${1:-dev}

localFolder = ./kiwee

# clone all repos required 
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_connector.git "$localFolder"
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_dashboard_api.git "$localFolder"
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_gui.git "$localFolder"

# copy docker-compose file to kiwee folder
cp docker-compose.yml ./kiwee

# changing to kiwee directory
cd kiwee

# running the containers
docker-compose up



