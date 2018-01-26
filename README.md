# roamers

# 通常のrailsと異なるとこ
## assetsはありません
画像は`javascript/images/`に置いてください
使い方はいつもどおり
`= image_tag 'intro-mock03.png'`で使えます

## なんでこうなってるの
ApplicationHelperにimage_tagをモンキーパッチしています
assetsに移動させた場合でも、ApplicationHelperにimage_tagをモンキーパッチを消すだけで通常のrailsに戻れます

# 環境構築

```
$ brew install rbenv
$ brew install ruby-build
$ brew install mysql
$ rbenv install 2.5.0
$ ruby -v
```
2.5.0が返されればOK
```
$ bundle
$ rails db:create db:migrate
$ rails s
```
