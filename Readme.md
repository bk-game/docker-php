# What
 
別リポジトリのgithubActions実行時にコードをパッケージ化したコンテナイメージを作成してDockerHubへアップロードする。
(Python版)
 
# DEMO
- 元リポジトリでActonsを実行する。
- 元リポジトリのsecret,リポジトリの情報をもとimage作成しDockerHUBへアップロードする。
 
 
 
# Usage
- 元のリポジトリから本リポジトリの`image-build.yml`を呼び出すActionsを作成する。([Sample](./src/.github/workflows/createImage.yml))
- secretにDocker Hubの認証情報を設定する
  - DOCKERHUB_TOKEN: DockerHUBのtoken
  - DOCKERHUB_USERNAME: DockerHUBのuser名

 
# Note
 
実行元のリポジトリ名でDockerHUBへアップロードされるため
- 「アカウント名」を合わせる必要がある
- imageの命名規則に合わせる必要がある（大文字NGなど）
 