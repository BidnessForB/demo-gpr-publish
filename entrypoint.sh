#!/bin/bash

set -e -u -o pipefail

printf "Actor: " 
printf "${GITHUB_ACTOR}"
git config user.name "${GITHUB_ACTOR}"
git config user.email "noreply@github.com"
printf "Publishing to GPR...\n"
npm version 1.0.$(date +%s)
npm config set //npm.pkg.github.com/:_authToken ${GPR_TOKEN}
npm publish

