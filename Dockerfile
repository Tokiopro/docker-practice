#ruby2,7系を使う
FROM ruby:2.7

#ディレクトリ作成
RUN mkdir /var/www
#main.rbを/var/www配下に置く。
COPY main.rb /var/www

#Dockerイメージを起動したときに実行するコマンドを定義
CMD ["ruby", "/var/www/main.rb"]

