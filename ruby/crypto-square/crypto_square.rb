class Crypto
  def initialize(plaintext)
    @plaintext = plaintext
  end

  def normalize_plaintext
    @plaintext.downcase.scan(/[a-z0-9]/).join
  end

  def size
    Math.sqrt(normalize_plaintext.length).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).map(&:join)
  end

  def normalize_ciphertext
    ciphertext_array.join(' ')
  end

  def ciphertext
    ciphertext_array.join
  end

  private

  def segments
    plaintext_segments.map(&:chars)
  end

  def ciphertext_array
    cipher = []
    size.times do |i|
      cipher << segments.map { |word_array| word_array[i] }.compact.join
    end
    cipher
  end
end
