"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var LeapChecker = (function () {
  function LeapChecker(year) {
    _classCallCheck(this, LeapChecker);

    this.year = year;
  }

  _createClass(LeapChecker, [{
    key: "check",
    value: function check() {
      return this._divisibleBy(400) || this._divisibleBy(4) && !this._divisibleBy(100);
    }
  }, {
    key: "_divisibleBy",
    value: function _divisibleBy(number) {
      return this.year % number === 0;
    }
  }]);

  return LeapChecker;
})();

exports["default"] = function (year) {
  return new LeapChecker(year).check();
};

module.exports = exports["default"];