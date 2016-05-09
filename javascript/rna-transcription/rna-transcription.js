module.exports = function() {

  return {
    toRna: function(dna) {
      var rna = '';
      for(var i=0; i< dna.length; i++) {
        rna += this._RnaMapping[dna[i]];
      }

      return rna;
    },

    _RnaMapping: {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U'
    }
  }

}
