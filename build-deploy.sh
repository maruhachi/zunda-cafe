#!/bin/bash
set -e

# sphinx ビルド. GitHubPages用ターゲット
make gh-pages

# GitHub Pages 向けに /docsをコミット
git add docs/.
git commit -m 'Generated automatically by TravisCI. deploy to /docs.'
git push --quiet "https://${GH_TOKEN}@github.com/maruhachi/zunda-cafe.git" master:master > /dev/null 2>&1
