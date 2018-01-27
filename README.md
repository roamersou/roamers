# roamers

## 環境構築手順

こちら -> [開発環境構築手順](https://github.com/roamersou/roamers/wiki/環境構築手順)

## 通常のrailsと異なるとこ
### assetsはありません
画像は`javascript/images/`に置いてください  
使い方はいつもどおり  
`= image_tag 'hogehoge.png'`

### なんでこうなってるの
assetsを消したかった
`ApplicationsprocketsHelper`に`image_tag`をモンキーパッチしている  
sprocketsで配信に戻したい場合でも、ApplicationHelperにimage_tagをモンキーパッチを消すだけで戻れる
