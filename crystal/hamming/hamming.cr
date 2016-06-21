module Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError.new if strand_1.size != strand_2.size

    strand_1.chars
            .zip(strand_2.chars)
            .count do |nucleotide_1, nucleotide_2|
      nucleotide_1 != nucleotide_2
    end
  end
end
