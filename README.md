# DockerでRails6系とMySQL8での開発環境

# Requirement

- Docker version 20.10.14
- Ruby on Rails 6.0
- MySQL 8.0
- Ruby 2.5

# Usage

1. git cloneでrails_taskリポジトリをローカルにコピーする

```
git clone <https://github.com/KokiOkumura/rails_task.git>

```

1. コピーしたrails_taskディレクトリに移動する

```
cd rails_task

```

1. webコンテナの立ち上げを行う

```
docker compose run web bash

```

1. データベースの作成とmigrationファイルの内容をDBに反映する

```
rails db:create

```

```
rails db:migrate

```

1. docker-compose upコマンドでコンテナを立てて、railsサーバーが起動していることを確認

```
docker-compose up

```

1. ブラウザでlocalhost:3000を立ち上げてrailsサーバーが起動していることを確認する。
[http://localhost:3000/](http://localhost:3000/)

# Note

注意点などがあれば書く

# Author

- KokiOKumura