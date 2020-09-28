# frozen_string_literal: true

module Translation
  MAPPING = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }.freeze

  def self.of_codon(codon)
    MAPPING[codon] || raise(InvalidCodonError)
  end

  def self.of_rna(rna_sequence)
    rna_sequence.scan(/.{1,3}/).each_with_object([]) do |codon, protien|
      peptide = of_codon(codon)
      break protien if peptide == 'STOP'

      protien << peptide
    end
  end
end

class InvalidCodonError < StandardError; end
