require 'httparty'

module Googl

  include HTTParty

  API_URL = 'https://www.googleapis.com/urlshortener/v1/url'

  def self.encode(url)
    options = {"shortUrl" => url}.inspect
    format_response(post_request(url, options))
  end

  private

  def self.add_header
    self.headers.merge!('Content-Type' => 'application/json')
  end

  def self.post_request(url, options)
    add_header
    self.post(API_URL, body: options)
  end

  def self.format_response(resp)
    if resp.code == 200
      resp['id']
    else
      resp.response
    end
  end
end
