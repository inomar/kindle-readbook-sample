require 'kindle_highlights'

kindle = KindleHighlights::Client.new(
    email_address: 'your-kindle-mailaddress',
    password: 'your-kindle-password',
    root_url: 'https://read.amazon.co.jp'
)

kindle.books.each do |book|
  puts book.to_s
  # -> ゼロ秒思考 by 赤羽 雄二
  puts book.highlights_from_amazon
  # -> 頭を使わない状況で成長することはない。考えて物事を整理し、問題点を解決していかなければ、気持ちも晴れることがない。
end
