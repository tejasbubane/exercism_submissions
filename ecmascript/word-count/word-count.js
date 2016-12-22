export default class WordCount {
  count(sentence) {
    let words = sentence.split(/\s+/).filter((word) => word !== "");

    return words.reduce((counts, word) => {
      word = word.toLowerCase();
      if(!(typeof(counts[word]) === 'number')) { counts[word] = 0; } // initialize
      counts[word] += 1;
      return counts;
    }, {});
  }
}
