class Pangram
  VERSION = 1
  ALPHABET = ('a'..'z').freeze

  def self.is_pangram?(string)
    ALPHABET.all? { |letter| string.downcase.chars.include?(letter) }
  end
end