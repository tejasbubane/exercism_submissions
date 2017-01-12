export default class Acronyms {
  static parse(phrase) {
    let words = phrase.split(/[\s-]/);
    return words.reduce((acc, word) => {
      if(word.toUpperCase() === word) {
        return word[0];
      }
      let letters = word.match(/[A-Z]/g);
      if(letters instanceof Array) {
        return acc += letters.join('');
      }
      return acc += word[0].toUpperCase();
    }, '');
  }
}
