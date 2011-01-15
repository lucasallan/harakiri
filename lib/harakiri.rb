require 'net/http'
require 'cgi'
require 'services/tiny'
require 'services/googl'

module Harakiri

  def self.tiny_encode(url)
    Tiny.encode(url)
  end
  
  def self.googl_encode(url)
    Googl.encode(url) 
  end
end

