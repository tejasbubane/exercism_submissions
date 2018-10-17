let allocatedNames = new Set();

function randomName() {
  while (true) {
    let name = randomLetters() + randomDigits();
    if (!allocatedNames.has(name)) {
      allocatedNames.add(name);
      return name;
    }
  }
}

function randomLetters() {
  let charset = `ABCDEFGHIJKLMNOPQRSTUVWXYZ`;
  let random26 = parseInt(Math.random() * 26);
  return charset[random26] + charset[random26];
}

function randomDigits() {
  return Math.random().toString().slice(-3);
}

export default class Robot {
  constructor() {
    this.randomName = randomName();
  }

  get name() {
    return this.randomName;
  }

  set name(_newName) {
    throw "Cannot change already assigned name";
  }

  reset() {
    this.randomName = randomName();
  }
}
