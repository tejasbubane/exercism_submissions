var Bob = function() {};

Bob.prototype.hey = function(input) {
  return respond(input);
};

module.exports = Bob;

var respond = function(input) {
  var shouting = input === input.toUpperCase();

  var question = input.slice(-1) === '?';

  var only_numbers = /^[\d,\s\?]+$/.test(input); // strings with only numbers, commas and question marks.

  var silence = /^\s*$/.test(input);

  return function () {
    if ( silence ) {
      return 'Fine. Be that way!'
    } else if ( shouting && !only_numbers ) {
      return 'Whoa, chill out!';
    } else if ( question ) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    };
  }();
}
