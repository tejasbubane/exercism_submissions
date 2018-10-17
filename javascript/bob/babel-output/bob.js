"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Bob = (function () {
  function Bob() {
    _classCallCheck(this, Bob);
  }

  _createClass(Bob, [{
    key: "hey",
    value: function hey(message) {
      if (this.shouting(message) && !this.numbers(message)) {
        return "Whoa, chill out!";
      } else if (this.question(message)) {
        return "Sure.";
      } else if (!message.trim()) {
        return "Fine. Be that way!";
      } else {
        return "Whatever.";
      }
    }
  }, {
    key: "shouting",
    value: function shouting(message) {
      var uppercase = message.toUpperCase();
      return uppercase == message;
    }
  }, {
    key: "question",
    value: function question(message) {
      return message.endsWith("?");
    }
  }, {
    key: "numbers",
    value: function numbers(message) {
      return !/[a-zA-Z]/.test(message);
    }
  }]);

  return Bob;
})();

exports["default"] = Bob;
module.exports = exports["default"];