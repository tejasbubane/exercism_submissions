class Anagram
  def initialize(word)
    @word = word
  end

  def match(candidates)
    candidates.select do |candidate|
      !equal?(candidate) && anagram?(candidate)
    end
  end

  private

  def equal?(candidate)
    candidate.downcase == @word.downcase
  end

  def anagram?(candidate)
    candidate.downcase.chars.sort == @word.downcase.chars.sort
  end
end
