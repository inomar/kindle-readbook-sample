require 'kindle_highlights'

kindle = KindleHighlights::Client.new(
    email_address: 'your-kindle-mailaddress',
    password: 'your-kindle-password',
    root_url: 'https://read.amazon.co.jp'
)

kindle.books.each do |book|
  puts book.to_s
  puts book.highlights_from_amazon
end
