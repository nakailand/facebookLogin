# SwiftでACAccountを使ってのfacebookLogin

## Facebook開発者登録
- https://developers.facebook.com で開発者登録をする。
- MyApps -> Add a New Appでアプリを登録

## Info.plistの編集
- FacebookDisplayNameを追加し、アプリ名(test)を入力
- FacebookAppIDを追加し、App ID(xxxxxxxxxxx)を入力
- URL types item0 URL Schemes item0に、fbxxxxxxxxxxx(fb + App Id)を入力

## 端末のFacebookに自分のアカウントを登録
- テストユーザーだとできなかったので注意。
