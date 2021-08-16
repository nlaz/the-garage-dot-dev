#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# add .nojekyll to bypass GitHub Page's default behavior
touch .nojekyll

# if you are deploying to a custom domain
echo 'thegarage.dev' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:nlaz/the-garage-dot-dev.git main:gh-pages

cd -