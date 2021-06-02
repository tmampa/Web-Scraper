require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :parse_page

  def initialize
    web = HTTParty.get('https://www.coursera.org/courses?query=free')
    @parse_page ||= Nokogiri::HTML(web.body)
  end

  def course
    institutions.map(&:text)
  end

  def institution
    courses.map(&:text)
  end

  def institutions
    parse_page.css('.headline-1-text')
  end

  def courses
    parse_page.css('.partner-name')
  end
end
