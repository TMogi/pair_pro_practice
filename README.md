# ペアプロ講義の演習

## ディレクトリ構成
```
./
├── Gemfile
├── Gemfile.lock
├── config.ru
├── lib
│   ├── configure.rb
│   ├── practice1.rb
│   ├── practice2.rb
│   └── practice3.rb
└── spec
```

## 課題のやりかた 
### 準備
+ リポジトリをローカル環境にクローン
```
$ git clone  https://github.com/TMogi/pair_pro_practice.git
```

+ 環境設定
```
$ bundle install --path vendor/bundle
```

### 課題1、課題2 について
+  `bundle exec rspec` を実行することでテストが走ります
+ テストを通るようにしましょう
+ それぞれの課題のみテストをかけたい場合
  + 課題1 : ` bundle exec rspec spec/practice1_spec.rb `
  + 課題2 : ` bundle exec rspec spec/practice2_spec.rb `

### 課題3 について
+ テストは設けていません
+ 最後に画面を見ながら確認します
+ sinatraの起動
```
$ bundle exec rackup config.ru 
```

## 課題1(ペアプロ) : `lib/practice1.rb`

### 導入
+ [FizzBuzz問題](https://ja.wikipedia.org/wiki/Fizz_Buzz)

### 必須
1. 数値を引数に取り、3の倍数だった場合は"Fizz"という文字列を返す `fizz` 関数を作成しなさい
1. 数値を引数に取り、5の倍数だった場合は"Buzz"という文字列を返す `buzz` 関数を作成しなさい
1. 数値を引数に取り、3の倍数のとき"Fizz", 5の倍数のとき"Buzz", 両方の倍数なら"FizzBuzz"を出力する `fizz_buzz` 関数を作成しなさい

### 応用
1. 数値の配列を引数にとり、要素それぞれに対して3の倍数のとき"Fizz"、5の倍数のとき"Buzz"、両方の倍数なら"FizzBuzz"に置き換えた配列を返却する `fizz_buzz_array` 関数を作成しなさい

## 課題2(ペアプロ) : `lib/practice2.rb`

### 導入
+ [スタック](https://ja.wikipedia.org/wiki/%E3%82%B9%E3%82%BF%E3%83%83%E3%82%AF)
+ [逆ポーランド記法](https://ja.wikipedia.org/wiki/%E9%80%86%E3%83%9D%E3%83%BC%E3%83%A9%E3%83%B3%E3%83%89%E8%A8%98%E6%B3%95)

### 必須
1. 引数の要素を配列の末尾に格納する `push` 関数を作成しなさい
1. 引数の要素を配列の末尾から要素を取り出す `pop` 関数を作成しなさい
1. 文字列を引数に取り、先頭文字から1文字ずつ配列にpushする関数 `push_string` を作成しなさい
  + (区切り文字は半角スペース ex. “1 2 3 4”)

### 応用
1. 逆ポーランド記法の文字列(ex. "2 3 +")を受け取り、加算を行う `calc_string` を実装しなさい。stackを利用した実装は以下の通りです。
  + 文字列を1要素ずつ確認する
    + 数値の場合
      + 文字列を数値に直してstackにpushする
    + `"+"` の場合
      + stackから2つの要素をpopして加算する
      + 加算した結果をstackにpushする

1. `calc_string` 関数に減算が出来る機能を追加しなさい
1. `calc_string` 関数に乗算が出来る機能を追加しなさい
1. `calc_string` 関数に除算が出来る機能を追加しなさい

## 課題3(モブプロ) : `lib/practice3.rb`

### 導入
+ `lib/configure.rb` を設定すること

### 必須
1. Sinatra環境を用意し、`Hallo World` を画面を作成しなさい (http://127.0.0.1:9292/)
1. `ekisuke` を利用できるようにし、 `"新宿-高円寺"` の探索結果を表示する画面を作成しなさい (http://127.0.0.1:9292/sample_search)
1. 出発駅と到着駅を入力する画面を作成しなさい (http://127.0.0.1:9292/search)
1. 2つの駅のパラメータを受け取り、探索結果を表示する画面を作成しなさい (http://127.0.0.1:9292/result)

### 応用
1. `/search` にパラメータを追加し、探索結果に反映させる
1. `/result` 画面に表示される情報を増やす
  + 探索結果を複数個表示する
  + HTMLでの見せ方を変更する 等
