require_relative '../bin/main'

describe Scraper do
  describe '#courses' do
    it 'returns course name' do
      text = Scraper.new
      expect(text.course).not_to be_nil
    end

end
