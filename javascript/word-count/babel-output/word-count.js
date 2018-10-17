"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var WordCount = (function () {
  function WordCount() {
    _classCallCheck(this, WordCount);
  }

  _createClass(WordCount, [{
    key: "count",
    value: function count(sentence) {
      var words = sentence.split(/\s+/).filter(function (word) {
        return word !== "";
      });

      return words.reduce(function (counts, word) {
        word = word.toLowerCase();
        if (!(typeof counts[word] === 'number')) {
          counts[word] = 0;
        } // initialize
        counts[word] += 1;
        return counts;
      }, {});
    }
  }]);

  return WordCount;
})();

exports["default"] = WordCount;
module.exports = exports["default"];