# Rack について調べる

## 下記の記事を手を動かしながら実践してみました。すごくわかりやすくまとめてくださっています 。ありがとうございますmm

- [Rack解説 - Rackの構造とRack DSL](https://qiita.com/higuma/items/838f4f58bc4a0645950a)

## Rack とは何か？

- Ruby 製の web フレームワークで使われているアプリケーションとサーバー間のインターフェース
- HTTP Request / Responce の送受信を周りの処理を共通化したもの

- 具体的には下記の条件を満たすオブジェエクト
  - call メソッドを呼べる
  - call メソッドの引数には,CGI 環境変数が Hash で渡される
  - 戻り値は、[status code, header, body]という形式にする

- Rack を拡張するためのミドルウェアが豊富にある
  - rack/rack
    - Rack::Static
    - Rack::Reloader
  - rack/rack-contrib
    - Rack::Cookies
    - Rack::JSONP
