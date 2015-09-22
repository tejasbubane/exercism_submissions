class Nucleotide
  SYMBOLS = %w(A C G T)

  attr_reader :dna

  def initialize(dna)
    @dna = dna
    raise ArgumentError unless valid_dna?
  end

  def count(nucleotide)
    dna.count(nucleotide)
  end

  def histogram
    @histogram ||= SYMBOLS.each_with_object({}) do |symbol, h|
      h[symbol] = count(symbol)
    end
  end

  def self.from_dna(dna)
    new(dna)
  end

  private

  def valid_dna?
    dna.scan(/[ACGT]+/).join.length == dna.length
  end
end
