presentation_html = 'dream-code.html'

use Rack::Static,
    urls: ["", "/extensions", "/themes", "/core"],
    index: presentation_html

run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open(presentation_html, File::RDONLY)
  ]
}
