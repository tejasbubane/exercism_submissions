class LeapChecker {
  constructor(year) {
    this.year = year;
  }

  check() {
    return this._divisibleBy(400) ||
             this._divisibleBy(4) && !this._divisibleBy(100);
  }

  _divisibleBy(number) {
    return this.year % number === 0;
  }
}

export default function(year) {
  return new LeapChecker(year).check();
}
