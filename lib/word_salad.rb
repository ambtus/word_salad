# frozen_string_literal: true

# This module generats random English words
module WordSalad
  class << self
    # the dictionary as a File object
    def dictionary
      @dictionary ||=
        File.open(File.join(File.dirname(__FILE__), 'word_salad/dictionary'))
    end

    def dictionary_path=(filename)
      @dictionary = filename
    end

    # all the words in the dictionary
    def words
      File.readlines(dictionary)
    end

    # the number of words in the dictionary
    def size
      @size ||= words.size
    end
  end
end

require 'word_salad/core_ext'
