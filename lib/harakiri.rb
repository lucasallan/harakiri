require 'net/http'
require 'cgi'

module Harakiri

  def self.encode(url)
    Harakiri::Tiny.encode(url)
  end

  module Tiny
    def self.encode(url)
      Net::HTTP.get(URI.parse("http://tinyurl.com/api-create.php?url=#{CGI::escape(url)}"))
    end
  end
end

