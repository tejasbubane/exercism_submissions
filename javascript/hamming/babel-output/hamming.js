'use strict';

Object.defineProperty(exports, '__esModule', {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var Hamming = (function () {
  function Hamming() {
    _classCallCheck(this, Hamming);
  }

  _createClass(Hamming, [{
    key: 'compute',
    value: function compute(strand_1, strand_2) {
      var nucleotides = strand_1.split('');

      if (strand_1.length !== strand_2.length) {
        throw new Error('DNA strands must be of equal length.');
      };

      return nucleotides.reduce(function (distance, nucleotide, index) {
        if (nucleotide === strand_2[index]) {
          return distance;
        } else {
          return distance + 1;
        }
      }, 0);
    }
  }]);

  return Hamming;
})();

exports['default'] = Hamming;
module.exports = exports['default'];