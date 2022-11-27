# webサーバーのライブラリ
require 'webrick'

# webページにサクセスするときにHTTPリクエストを返すサーバ、ウェブサーバー
server = WEBrick::HTTPServer.new(
  DocumentRoot: './',
  BindAddres: '0.0.0.0',
  Port: 8000
)

server.mount_proc('/') do |_req, res|
  res.body = 'hello'
end

server.start
