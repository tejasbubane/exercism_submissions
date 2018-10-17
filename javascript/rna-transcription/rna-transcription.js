class Transcriptor {
  check(nucleotides) {
    return nucleotides.every((n) => this.complement(n) !== undefined);
  }

  toRna(strand) {
    let nucleotides = strand.split('');

    if (this.check(nucleotides)) {
      return (
        nucleotides
          .map((nucleotide) => this.complement(nucleotide))
          .join('')
      );
    }
    else {
      return null;
    }
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
