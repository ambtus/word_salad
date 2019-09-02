class Integer
  # Returns +num+ random words from the dictionary.
  def words
    dict = WordSalad.dictionary
    (1..self).to_a.map do |x|
      WordSalad.words[rand(WordSalad.size)].strip
    end
  end

  # Returns 1 random word
  def word
    1.words.first
  end

  # Returns +num+ sentences of random words about +size+ long
  def sentences(size=10)
    (1..self).to_a.map do |x|
      variance = rand(size/3 + 1)
      variance = 0 - variance if rand(2) == 0 # plus or minus
      w = (size + variance).words
      w[0].capitalize!
      w.join(' ') + '.'
    end
  end

  # Returns 1 sentence of random words about +size+ long
  def sentence(size=10)
    1.sentences(size).first
  end

  # Returns +num+ paragraphs of +psize+ sentences,
  # each about +ssize+ words long
  def paragraphs(psize=5, ssize=10)
    (1..self).to_a.map do |x|
      psize.sentences(ssize).join(' ')
    end
  end

  # Returns 1 paragraph of +psize+ sentences,
  # each about +ssize+ words long
  def paragraph(psize=5, ssize=10)
    1.paragraphs(psize, ssize).first
  end
end
