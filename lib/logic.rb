require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :parse_page

  def initialize
    web = HTTParty.get('https://www.autopedigree.co.za/search.php?carMake=&carModel=&carPrice=&carBranch=&page=1&search=Find+a+Car')
    @parse_page ||= Nokogiri::HTML(web.body)
  end

  def p_category
    title.map(&:text)
  end

  def p_counter
    numbers.map(&:text)
  end

  def title
    parse_page.css('.vehicle_title')
  end

  def numbers
    parse_page.css('.vehicle-price')
  end
end
