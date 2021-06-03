require './bin/main'

describe Scraper do
  describe '#courses' do
    it 'returns course name' do
      text = Scraper.new
      expect(text.course).not_to be_nil
    end
    it 'String limit 50 words' do
      text = Scraper.new
      expect(text.course.size).to be < 50
    end
  end
  describe '#institution' do
    let(:course) { Scraper.new }
    it 'returns course institutions' do
      expect(course.institutions).not_to be_nil
    end
    it 'Instituions will be more than 0' do
      expect(course.institutions).not_to eql 0
    end
  end
end
