# !/usr/bin/ruby

require '../lib/logic'

scraper = Scraper.new
category = scraper.p_category
counter = scraper.p_counter

(0...counter.size).each do |index|
  puts "Vehile: #{category[index]} | Price: #{counter[index]}"
end
