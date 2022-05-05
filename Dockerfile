FROM ruby:2.5

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
RUN npm install --global yarn

RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev 
# コンテナ側に作成する
WORKDIR /rails_task

# Gemfileをコンテナ側にコピーする。 複数のファイルをコピーする時はpathの最後に/をつける
COPY Gemfile Gemfile.lock /rails_task/
# bundle installのコマンドでGemfileに書かれたgemをインストールする
RUN bundle install
