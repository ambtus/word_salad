# frozen_string_literal: true

%w[word words sentence sentences paragraph paragraphs].each do |meth|
  raise "#{meth} is already defined in Integer class" if Integer.method_defined?(meth)
end

# extends the build in Integer class
class Integer
  # Returns 1 random word
  def word
    1.words.first
  end

  # Returns 1 sentence of random words about +size+ long
  def sentence(size = 10)
    1.sentences(size).first
  end

  # Returns 1 paragraph of +psize+ sentences,
  # each about +ssize+ words long
  def paragraph(psize = 5, ssize = 10)
    1.paragraphs(psize, ssize).first
  end

  # Returns +num+ random words from the dictionary.
  def words
    WordSalad.dictionary
    (1..self).to_a.map do |_x|
      WordSalad.words[rand(WordSalad.size)].strip
    end
  end

  # Returns +num+ sentences of random words about +size+ long
  def sentences(size = 10)
    (1..self).to_a.map do |_x|
      variance = rand((size / 3) + 1)
      variance = 0 - variance if rand(2).zero? # plus or minus
      w = (size + variance).words
      w[0].capitalize!
      "#{w.join(' ')}."
    end
  end

  # Returns +num+ paragraphs of +psize+ sentences,
  # each about +ssize+ words long
  def paragraphs(psize = 5, ssize = 10)
    (1..self).to_a.map do |_x|
      psize.sentences(ssize).join(' ')
    end
  end
end
