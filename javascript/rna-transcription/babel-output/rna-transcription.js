'use strict';

Object.defineProperty(exports, '__esModule', {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var Transcriptor = (function () {
  function Transcriptor() {
    _classCallCheck(this, Transcriptor);
  }

  _createClass(Transcriptor, [{
    key: 'check',
    value: function check(nucleotides) {
      var _this = this;

      return nucleotides.every(function (n) {
        return _this.complement(n) !== undefined;
      });
    }
  }, {
    key: 'toRna',
    value: function toRna(strand) {
      var _this2 = this;

      var nucleotides = strand.split('');

      if (this.check(nucleotides)) {
        return nucleotides.map(function (nucleotide) {
          return _this2.complement(nucleotide);
        }).join('');
      } else {
        return null;
      }
    }
  }, {
    key: 'complement',
    value: function complement(nucleotide) {
      return ({
        'G': 'C',
        'C': 'G',
        'T': 'A',
        'A': 'U'
      })[nucleotide];
    }
  }]);

  return Transcriptor;
})();

exports['default'] = Transcriptor;
module.exports = exports['default'];