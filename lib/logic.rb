require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :parse_page

  def initialize
    doc = HTTParty.get('http://www.nike.com/w/mens-nike-by-you-lifestyle-shoes-13jrmz6ealhznik1zy7ok')
    @parse_page ||= Nokogiri::HTML(doc.body)
  end

  def p_names
    title.map(&:text)
  end

  
end
