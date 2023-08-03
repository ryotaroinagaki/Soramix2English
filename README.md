# 空耳English

## サービス概要
空耳に聞こえる英語のクイズに答えていき、空耳英語から脱却していくサービスです。

## 想定されるユーザー層
* 英語初心者
* 空耳で英語が聞こえる人

## サービスコンセプト
"空耳に打ち勝て"をコンセプトにしています。
人間は知らない音（英語）を勝手に知っている音（日本語）に変換しようとするそうです。
私自身も、知らない英語のフレーズや音が多く、その音が日本語に聞こえることばかりです。
空耳英語ではなく、英語の耳にしていき、英語を聞き取れる様になりたいという思いからこのWebアプリを作ろうと考えました。
このサービスで、英語の中で難しいリスニングの力を養えていってもらいたいと考えています。

## 実装を予定している機能
### MVP
* 会員登録
* ログイン機能（Googleなど）
* 自動ログイン（Remember me）
* 好きな問題Twitterシェア
* クイズ正答率Twitterシェア
* クイズ難しさ別（おもしろ別）一覧
* LIKE（いいね）
* ブックマーク
* 字幕表示
* YouTubeの埋め込み＋必要箇所のみ再生

### その後の機能
* 問題人気ランキング（いいね数）
* ユーザーのレベル別ランキング表示
* 解答閲覧後、音声認識による、自分の発音の確認
* 非同期通信によるYoutubeと連動する字幕表示
* ユーザーが挑戦した問題の正解・不正解から、似たようなジャンル・難易度でユーザーに対して、リコメンド機能でユーザーが得意or不得意な問題を提供します
* ユーザーの問題回答数に応じたレベルアップが可能（例：Lv10,空耳マスター→Lv50,ネイティブ耳もどき）
* 難易度・ジャンル・単語を検索できるマルチ検索
* クイズで出題された単語を検索する際のオートコンプリート機能（過去に回答した問題の英単語を検索できるようにして、該当の問題を簡単に見つけられるようにします。）
* 実装するかは未定ですが、リコメンドされた問題がLINE通知で送られてきて、再度ユーザーにサービスを使ってもらえるようにする。

### 画面遷移図
https://www.figma.com/file/GY5tyHpsDrZZoh1u0IbtdC/Web-App?type=design&node-id=0%3A1&mode=design&t=ao71kZkRBj8CjzuD-1

![ER図](https://gyazo.com/63f2ac1140e136b05a69be11d74ba390)