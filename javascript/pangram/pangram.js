export default class Pangram {
  constructor(sentence) {
    this.sentence = sentence;
    this.chars = sentence.toLowerCase().split('');
    this.charset = new Set();
  }

  isPangram() {
    this.chars.map((c) => {
      if(/[a-z]/.test(c)) {
        this.charset.add(c);
      }
    });

    return this.charset.size === 26;
  }
}
