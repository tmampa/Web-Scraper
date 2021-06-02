# !/usr/bin/ruby

require_relative './lib/logic'

scraper = Scraper.new
names = scraper.p_names
prices = scraper.p_prices

(0...prices.size).each do |index|
  puts "--- index: #{index + 1} ---"
  puts "Name: #{names[index]} | Price: #{prices[index]}"
end
