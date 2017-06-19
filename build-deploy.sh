#!/bin/bash
set -e

# sphinx $B%S%k%I(B. GitHubPages$BMQ%?!<%2%C%H(B
make gh-pages

# GitHub Pages $B8~$1$K(B /docs$B$r%3%_%C%H(B
git config --global user.email "travis@example.com"
git config --global user.name "travisci"
git add docs/.
git commit -m 'Generated automatically by TravisCI. deploy to /docs.'
git push --quiet "https://${GH_TOKEN}@github.com/maruhachi/zunda-cafe.git" master:master > /dev/null 2>&1
