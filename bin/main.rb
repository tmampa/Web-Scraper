# !/usr/bin/ruby

require_relative './lib/logic'

scraper = Scraper.new
names = scraper.p_names
prices = scraper.p_prices