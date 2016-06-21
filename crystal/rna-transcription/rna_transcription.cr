module RnaComplement
  COMPLIMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(dna : String)
    dna.chars.map { |c| COMPLIMENT[c] }.join
  end

  # TODO: add ofRna
end
