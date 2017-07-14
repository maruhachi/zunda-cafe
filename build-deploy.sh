#!/bin/bash
# TravisCI用のビルド・デプロイスクリプト
set -e

# sphinx ビルド. GitHubPages用ターゲット
make gh-pages

# GitHub Pages 向けに /docsをコミット
git config --global user.email "travis@example.com"
git config --global user.name "travisci"
git add docs/. -f
git status
git commit -m 'Generated automatically by TravisCI. deploy to /docs.'
git checkout master
git branch -a
git push "https://maruhachi:${GH_TOKEN}@github.com/maruhachi/zunda-cafe.git" master:master
