# !/usr/bin/ruby

require '../lib/logic'

scraper = Scraper.new
course = scraper.course
institution = scraper.institution

(0...institution.size).each do |index|
  puts "Course: #{course[index]} | Institution: #{institution[index]}"
end
