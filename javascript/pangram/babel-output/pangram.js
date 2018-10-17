'use strict';

Object.defineProperty(exports, '__esModule', {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var Pangram = (function () {
  function Pangram(sentence) {
    _classCallCheck(this, Pangram);

    this.sentence = sentence;
    this.chars = sentence.toLowerCase().split('');
    this.charset = new Set();
  }

  _createClass(Pangram, [{
    key: 'isPangram',
    value: function isPangram() {
      var _this = this;

      this.chars.map(function (c) {
        if (/[a-z]/.test(c)) {
          _this.charset.add(c);
        }
      });

      return this.charset.size === 26;
    }
  }]);

  return Pangram;
})();

exports['default'] = Pangram;
module.exports = exports['default'];