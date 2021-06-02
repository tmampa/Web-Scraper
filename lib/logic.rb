require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :parse_page

  def initialize
    doc = HTTParty.get('https://sacoronavirus.co.za/')
    @parse_page ||= Nokogiri::HTML(doc.body)
  end

  def p_category
    title.map(&:text)
  end

  def p_counter
    numbers.map(&:text)
  end

  def title
    parse_page.css('.counter-box-content')
  end

  def numbers
    parse_page.css('.content-box-counter')
  end
end
