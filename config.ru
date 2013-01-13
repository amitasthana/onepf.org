use Rack::Static,
  :urls => ["/img", "/js", "/css", "/favicon.ico"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
