export default class Beer {
  static verse(number) {
    return this.firstLine(number) + this.secondLine(number);
  }

  static sing(start = 99, end = 0) {
    let result = [];
    for(let number = start; number >= end; number -= 1) {
      result.push(this.firstLine(number) + this.secondLine(number));
    }
    return result.join("\n");
  }

  static firstLine(number) {
    let bottle = this.pluralizeBottle(number);
    number = number === 0 ? "no more" : number;
    return `${this.capitalize(number)} ${bottle} of beer on the wall, ${number} ${bottle} of beer.\n`;
  }

  static secondLine(number) {
    if(number === 0) {
      return "Go to the store and buy some more, 99 bottles of beer on the wall.\n";
    }

    let newNumber = number - 1;
    if(newNumber === 0) { newNumber = "no more"; }

    let downCount = number === 1 ? "it" : "one";
    let bottle = this.pluralizeBottle(newNumber);
    return `Take ${downCount} down and pass it around, ${newNumber} ${bottle} of beer on the wall.\n`;
  }

  static capitalize(string) {
    string = (string).toString();
    return string.slice(0, 1).toUpperCase() + string.slice(1);
  }

  static pluralizeBottle(number) {
    return number === 1 ? "bottle" : "bottles";
  }
}
