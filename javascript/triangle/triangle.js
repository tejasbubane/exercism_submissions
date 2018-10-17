export default class Triangle {
  constructor(x, y, z) {
    this.x = x;
    this.y = y;
    this.z = z;
    this._sides = [x, y, z];
  }

  kind() {
    if(this._isIllegal()) {
      throw 'invalid';
    }
    else if(this._isEquilateral()) {
      return 'equilateral';
    }
    else if(this._isIsosceles()) {
      return 'isosceles';
    }
    else {
      return 'scalene';
    }
  }

  _isIllegal() {
    return this._unEqual();
  }

  _isEquilateral() {
    return this.x === this.y && this.y === this.z;
  }

  _isIsosceles() {
    let [x, y, z] = this._sides;

    return x == y || y == z || z == x;
  }

  _unEqual() {
    let [x, y, z] = this._sides;

    return x + y <= z || y + z <= x || x + z <= y;
  }
}
