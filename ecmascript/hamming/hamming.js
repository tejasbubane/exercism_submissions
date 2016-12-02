class Hamming {
  compute(strand_1, strand_2) {
    let nucleotides = strand_1.split('');

    if (strand_1.length !== strand_2.length) {
      throw new Error('DNA strands must be of equal length.');
    };

    return nucleotides.reduce((distance, nucleotide, index) => {
      if (nucleotide === strand_2[index]) {
        return distance;
      } else {
        return distance + 1;
      }
    }, 0);
  }
}

export default Hamming;
