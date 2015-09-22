class Scrabble
  SCORES = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  attr_reader :alphabets

  def initialize(word)
    @alphabets = word.to_s.split('')
  end

  def score
    alphabets.inject(0) { |sum, alphabet| sum + points(alphabet) }
  end

  def self.score(word)
    new(word).score
  end

  private

  def points(alphabet)
    SCORES.select { |key, value| value.include? alphabet.upcase }.keys.first || 0
  end
end
