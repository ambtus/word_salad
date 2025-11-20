# frozen_string_literal: true

RSpec.describe WordSalad do
  describe 'generating random words' do
    it 'returns an array' do
      expect(5.words).to be_an Array
    end

    it 'of the right size' do
      expect(5.words.size).to eq 5
    end

    it 'of strings' do
      expect(5.words).to all(be_a String)
    end

    it 'responds to the singular version too' do
      expect(1.word).to be_a String
    end
  end

  describe 'generating random sentences' do
    it 'returns an array' do
      expect(5.sentences).to be_an Array
    end

    it 'of the right size' do
      expect(5.sentences.size).to eq 5
    end

    it 'of strings' do
      expect(5.sentences).to all(be_a String)
    end

    it 'responds to the singular version too' do
      expect(1.sentence).to be_a String
    end
  end

  describe 'generating random paragraphs' do
    it 'returns an array' do
      expect(5.paragraphs).to be_an Array
    end

    it 'of the right size' do
      expect(5.paragraphs.size).to eq 5
    end

    it 'of strings' do
      expect(5.paragraphs).to all(be_a String)
    end

    it 'responds to the singular version too' do
      expect(1.paragraph).to be_a String
    end
  end

  describe 'overriding the default dictionary path' do
    before :context do
      @tmpfile = Tempfile.new 'word_salad'
      described_class.size.times { @tmpfile << "alpha\n" }
      @tmpfile.close
      described_class.dictionary_path = @tmpfile.path
    end

    it 'works for words' do
      expect(5.words).to all(eq 'alpha')
    end

    it 'works for sentences' do
      5.sentences.each do |sent|
        expect(sent.split.uniq).to eq ['Alpha', 'alpha', 'alpha.']
      end
    end

    it 'works for paragraphs' do
      5.paragraphs.each do |para|
        expect(para.split.uniq).to eq ['Alpha', 'alpha', 'alpha.']
      end
    end
  end
end
