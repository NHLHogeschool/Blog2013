require 'open-uri'
require 'nokogiri'

class Google
  attr_accessor :url

  def initialize(term)
    @url = "http://www.google.nl/search?q=#{term}"
  end

  def items
    Nokogiri::HTML(open(@url)).css('li.g').map do |item|
      {
        title: item.css('h3').text,
        url: 'http://google.com' + item.css('h3 > a').first['href'],
        summary: item.css('.st').text
      }
    end
  end
end
