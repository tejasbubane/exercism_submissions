"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var PhoneNumber = (function () {
  function PhoneNumber(input) {
    _classCallCheck(this, PhoneNumber);

    this.input = input;
  }

  _createClass(PhoneNumber, [{
    key: "number",
    value: function number() {
      var digits = this.input.split("").filter(function (c) {
        return (/[0-9]/.test(c)
        );
      }).join("");
      return this.validate(digits);
    }
  }, {
    key: "validate",
    value: function validate(digits) {
      if (digits.length == 10) {
        return digits;
      } else if (digits.length === 11 && digits.startsWith("1")) {
        return digits.slice(1);
      } else {
        return "0".repeat(10);
      }
    }
  }, {
    key: "areaCode",
    value: function areaCode() {
      return this.number().slice(0, 3);
    }
  }, {
    key: "toString",
    value: function toString() {
      var number = this.number();
      var hiphenated = [number.slice(3, 6), number.slice(6)];
      return "(" + this.areaCode() + ") " + hiphenated[0] + "-" + hiphenated[1];
    }
  }]);

  return PhoneNumber;
})();

exports["default"] = PhoneNumber;
module.exports = exports["default"];