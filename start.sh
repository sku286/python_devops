#!/bin/sh

# defining the branch to pull code
BRANCH=${1:-dev}

# clone all repos required
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_connector.git
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_dashboard_api.git
git clone --single-branch --branch "$BRANCH" git@gitlab.com:kiwee_core/kiwee_gui.git

# running the containers
docker-compose up
