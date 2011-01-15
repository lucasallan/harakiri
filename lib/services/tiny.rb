module Tiny
  def self.encode(url)
    Net::HTTP.get(URI.parse("http://tinyurl.com/api-create.php?url=#{CGI::escape(url)}"))
  end
end

