module.exports = function() {

  return {
    count: function(sentence) {
      var words = sentence.split(/\s+/)
                          .filter(function(word) { return word !== '' });

      return words.reduce(function(result, word) {
        var word = word.toLowerCase();

        result[word] ? result[word] += 1 : result[word] = 1;
        return result
      }, {})
    }
  }

}
