require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :parse_page

  def initialize
    web = HTTParty.get('https://www.coursera.org/courses?query=free')
    @parse_page ||= Nokogiri::HTML(web.body)
  end

  def course
    title.map(&:text)
  end

  def institution
    numbers.map(&:text)
  end

  def title
    parse_page.css('.headline-1-text')
  end

  def numbers
    parse_page.css('.partner-name')
  end
end
