require 'httparty'

module Googl

  include HTTParty

  API_URL = 'https://www.googleapis.com/urlshortener/v1/url'
  
  def self.encode(url)
    change_header 
    options = {"longUrl" => url}.inspect
    resp = self.post(API_URL, :body => options)
    if resp.code == 200
      resp['id']
    else
      resp.response
    end
  end

  protected

  def self.change_header
    self.headers.merge!('Content-Type' => 'application/json')
  end
end
