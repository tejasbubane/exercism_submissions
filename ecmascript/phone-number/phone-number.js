export default class PhoneNumber {
  constructor(input) {
    this.input = input;
  }

  number() {
    let digits = this.input
        .split("")
        .filter((c) => /[0-9]/.test(c))
        .join("");
    return this.validate(digits);
  }

  validate(digits) {
    if(digits.length == 10) {
      return digits;
    }
    else if(digits.length === 11 && digits.startsWith("1")) {
      return digits.slice(1);
    }
    else {
      return "0".repeat(10);
    }
  }

  areaCode() {
    return this.number().slice(0, 3);
  }

  toString() {
    let number = this.number();
    let hiphenated = [number.slice(3, 6), number.slice(6)];
    return `(${this.areaCode()}) ${hiphenated[0]}-${hiphenated[1]}`;
  }
}
