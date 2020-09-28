# frozen_string_literal: true

class Anagram
  attr_reader :word, :letters

  def initialize(word)
    @word = word.downcase
    @letters = word.downcase.split('').sort
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate = candidate.downcase
      candidate != word && candidate.split('').sort == letters
    end
  end
end
