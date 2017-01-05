import bigInt from './big-integer';

export default class Grains {
  square(number) {
    return this._square(number).toString();
  }

  total() {
    return this._square(65).minus(1).toString();
  }

  _square(number) {
    return bigInt(2).pow(number - 1);
  }
}
