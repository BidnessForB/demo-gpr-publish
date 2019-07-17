#!/bin/bash

set -e -u -o pipefail

git config user.name "GPR User"
git config user.email "noreply@github.com"
printf "hello again\n"
npm version 1.0.$(date +%s)
npm config set //npm.pkg.github.com/:_authToken ${GPR_TOKEN}
npm publish

