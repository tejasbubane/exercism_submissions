module.exports = function(birthdate) {

  return {
    date: function() {
      var seconds = 1000; // millisecond to second

      return new Date(birthdate.getTime() + this._giga * seconds);
    },

    _giga: Math.pow(10, 9)
  }

}
