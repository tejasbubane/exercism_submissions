module.exports = function() {

  return {
    toRna: function(dna) {
      var nucleotides = dna.split(''),
          rnaMapping = {
            'G': 'C',
            'C': 'G',
            'T': 'A',
            'A': 'U'
          };

      return nucleotides.reduce(function(rna, nucleotide) {
        return rna + rnaMapping[nucleotide];
      }, '');
    }
  }

}
