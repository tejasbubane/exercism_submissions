module.exports = function (year) {
  return {
    year: year,

    isLeap: function() {
      return this._every(400) || (!this._every(100) && this._every(4));
    },

    _every: function(duration) {
      return this.year % duration === 0;
    }
  }
}
