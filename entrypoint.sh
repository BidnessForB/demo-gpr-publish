git config user.name "GPR User"
git config user.email "noreply@github.com"
npm version 1.0.$(date +%s)
npm config set //npm.pkg.github.com/:_authToken ${{GPR_TOKEN}}
npm publish

