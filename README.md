# README

# アプリケーション名
okusuri-calendar
# アプリケーション概要
自分が飲んでいる薬を一覧として登録し、チェックボックスで飲んだことを確認できる

毎日飲まない薬でも、薬を飲んだ時間と名前、錠数を登録し確認できる
# URL
https://okusuri-calendar.herokuapp.com/
# テスト用アカウント
Basic認証パスワード：1111

Basic認証ID:2222

メールアドレス：sample@sample.com

パスワード：11111a

# 利用方法
## 内服薬一覧機能
1.トップページのヘッダーからユーザー新規登録を行う

2.ログインすると「お薬登録」ボタンが表示されるためクリックしてページ移動する

3.内服薬一覧ページにあるフォームに、「薬の名前」、「錠数」、「タイミング」、（「メモ」は任意）を入力し、「記録する」ボタンをクリックする

4.登録した項目内にある薬の名前をクリックすると編集ページに遷移するため、そこから記録内容を編集・削除する

5.登録した薬を内服したら、項目ごとに設置されているチェックボックスにチェックを入れる

## 内服記録機能
1.トップページのヘッダーからユーザー新規登録を行う

2.ログインすると「記録する」ボタンが表示されるためクリックしてページ移動する

3.飲んだ時間（「薬の名前」、「錠数」、「メモ」、「写真」は任意）を入力し、記録するボタンをクリックする

4.トップページのカレンダー内に、３で入力した項目の時間が表示される。その時間をクリックすると編集ページに遷移するため、そこから記録内容を編集・削除する
# アプリケーションを作成した背景
前職での経験で、薬を飲む全ての年代の人が、「薬を飲んだかどうか忘れてしまう」、「続けて内服する場合は一定の時間間隔をあける必要があるが、前回薬を飲んだ時間がわからない」という課題を抱えていることが分かった。課題を分析し、どのような薬をいつ飲んだのかを記録するツールがないということが真因であると仮説を立てた。この真因を解決するために、薬を飲んだことを登録し、いつでも薬の名前と錠数、時間、また薬を飲んだことそのものを確認できるアプリケーションを開発することにした。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/16GqPUVmL8EaHS8k2xYMZ3NDYsOteS8O2UT9QBqzSwQQ/edit#gid=982722306
# 実装した機能についての画像やGIFおよびその説明
* 内服一覧機能

[![Image from Gyazo](https://i.gyazo.com/4308210c45e82ae70b0900ed03ad360f.gif)](https://gyazo.com/4308210c45e82ae70b0900ed03ad360f)

* 内服記録機能

[![Image from Gyazo](https://i.gyazo.com/e9a09ee86084fb2098db9bcb240f0056.gif)](https://gyazo.com/e9a09ee86084fb2098db9bcb240f0056)# 実装予定の機能

# 開発環境

今後は下記２項目を実装予定

* 内服一覧機能にて、チェックボックスを一括解除する仕様

* 内服記録機能にて、投稿できる「薬の名前」、「錠数」のフォームをユーザーの任意で動的に追加し、前述２項目を複数登録できる仕様

# データベース設計

![ER-okusuri](https://user-images.githubusercontent.com/111730430/195013546-fa7d337f-d051-4437-8399-28a04344007f.png)

# 画面遷移図

![SENI](https://user-images.githubusercontent.com/111730430/195013678-ba2c7a89-40b0-4178-8014-17348052dbab.png)

# 開発環境
HTML
/CSS
/Ruby on Rails
/jquery
/VSコード

# ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/1ain00/okusuri

% cd okusuri

% bundle install

% yarn install

% rails db:create

% rails db:migrate

% rails s

# 工夫したポイント
## 内服薬一覧機能

一覧ページに新規投稿フォームを配置することで、ユーザーが投稿した内容を確認しながら新規登録できる仕様にした。

チェックボックスにチェックを入れた後、ページを移動したりリロードをしてもチェックが外れないため一日の内服状況をいつでも確認できるようにした。

## 内服記録機能

カレンダー内に登録した時間を表示し、機能実装の目的である「薬を飲んだ時間を確認できる」を達成しつつ、トップページに表示することで簡便さを加えた。

投稿項目に「画像」を加えることで、飲んだ薬の空容器をユーザーが撮影しその写真を登録できるようにした。

上記仕様もあるため、「時間」以外の項目は空でも登録できるようにし汎用性を高くしている。

