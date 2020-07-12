#!/bin/sh

# defining the branch to pull code
BRANCH=${1:-dev}

# clone all repos required
git clone --single-branch --branch "$BRANCH" <Project 1 >
git clone --single-branch --branch "$BRANCH" <Project 2>

# running the containers
docker-compose up
