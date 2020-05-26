#!/bin/s

# defining the branch to pull code
BRANCH=${1:-dev}

mkdir kiwee
cd ./kiwee

# clone all repos required
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_connector.git
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_dashboard_api.git
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_gui.git

# copy docker-compose file to kiwee folder
cp ../docker-compose.yml .

# running the containers
docker-compose up
