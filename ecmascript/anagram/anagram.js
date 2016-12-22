export default class Anagram {
  constructor(word) {
    this.word = word.toLowerCase();
  }

  matches(wordList, ...rest) {
    if(!(wordList instanceof Array)) {
      wordList = [wordList];
    }

    wordList = wordList.concat(rest);
    return wordList.filter((word) => {
      word = word.toLowerCase();

      return this.word !== word &&
        this.sorted(this.word) === this.sorted(word);
    });
  }

  sorted(word) {
    return word.split("").sort().join();
  }
}
