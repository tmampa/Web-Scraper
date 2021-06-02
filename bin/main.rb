# !/usr/bin/ruby

require '../lib/logic'

scraper = Scraper.new
category = scraper.p_category
counter = scraper.p_counter

(0...counter.size).each do |index|
  puts "Category: #{category[index]} | Counter: #{counter[index]}"
end
