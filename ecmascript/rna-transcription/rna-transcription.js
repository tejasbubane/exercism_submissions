class Transcriptor {
  toRna(strand) {
    return (
      strand.split('')
        .map((nucleotide) => this.complement(nucleotide))
        .join('')
    );
  }

  complement(nucleotide) {
    return {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U'
    }[nucleotide];
  }
}

export default Transcriptor;
