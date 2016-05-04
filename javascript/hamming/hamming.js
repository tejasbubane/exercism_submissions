module.exports = function() {
  return {
    compute: function(strand_1, strand_2) {
      if(strand_1.length !== strand_2.length) {
        throw 'DNA strands must be of equal length.';
      }

      return this._getDifference(strand_1, strand_2);
    },

    _getDifference: function(strand_1, strand_2) {
      var difference = 0;
      for(var i=0; i < strand_1.length; i++) {
        if (strand_1[i] !== strand_2[i]) {
          difference++;
        }
      }
      return difference;
    }
  }
}
