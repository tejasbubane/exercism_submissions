export default class FoodChain {
  constructor() {
    this.animals = ['fly', 'spider', 'bird', 'cat', 'dog',
                    'goat', 'cow', 'horse'];
    this.reactions = {
      fly: "I don't know why she swallowed the fly. Perhaps she'll die.",
      spider: "It wriggled and jiggled and tickled inside her.",
      bird: "How absurd to swallow a bird!",
      cat: "Imagine that, to swallow a cat!",
      dog: "What a hog, to swallow a dog!",
      goat: "Just opened her throat and swallowed a goat!",
      cow: "I don't know how she swallowed a cow!",
      horse: "She's dead, of course!"
    };
  }

  verse(number) {
    let animal = this.animals[number - 1];
    let verse = `I know an old lady who swallowed a ${animal}.
${this.reactions[animal]}
`;

    if(animal == 'horse') { return verse; }

    for(let i = number - 1; i >= 1; i--) {
      let currentAnimal = this.animals[i],
          previousAnimal = this.animals[i - 1];

      verse += `She swallowed the ${currentAnimal} to catch the ${previousAnimal}`;

      verse += this.handleSpiderReaction(previousAnimal) +
                 this.handleFlyReaction(previousAnimal);
    }
    return verse;
  }

  verses(from, to) {
    let result = '';
    for (let i = from; i <= to; i++) {
      result += `${this.verse(i)}\n`;
    }
    return result;
  }

  handleSpiderReaction(animal) {
    if(animal == 'spider') {
      return ` that wriggled and jiggled and tickled inside her.\n`;
    } else {
      return '.\n';
    }
  }

  handleFlyReaction(animal) {
    if(animal == 'fly') {
      return `${this.reactions['fly']}\n`;
    } else  {
      return '';
    }
  }
}
