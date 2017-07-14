# zunda-cafe
zunda-cafeのissue/wiki用リポジトリ のfork

[![Build Status](https://travis-ci.org/maruhachi/zunda-cafe.svg?branch=master)](https://travis-ci.org/maruhachi/zunda-cafe)

## sphinxによるガイドライン執筆環境整備

* source/
  * Sphinx記載先ソースファイル
* Makefile, make.bat
  * Sphinxドキュメント生成用スクリプト
* docs/
  * SphinxをビルドしたHTMLを公開用に配置するディレクトリ
  * 暫定で手でビルドしたHTMLを配置

### 将来的な運用イメージ
1. `develop`ブランチへドキュメント変更のPullRequestを送る
2. 逐次masterへマージ
3. マージされたらTravisCIでSphinxをビルド
4. 生成したbuild/htmlを/docsへPush

### 参考資料
- [Qiita - Travis CIからgithub.ioにデプロイする方法](http://qiita.com/dora56/items/cafae475daec802b6b8f)
- [Automatic Github Pages generation from Sphinx documentation](http://nikhilism.com/post/2012/automatic-github-pages-generation-from/)
