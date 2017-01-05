const ORBITAL_PERIOD = { // in earth years
  mercury: 0.2408467,
  venus: 0.61519726,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.44749,
  uranus: 84.016846,
  neptune: 164.79132
};

export default class SpaceAge {
  constructor(ageInSeconds) {
    this.seconds = ageInSeconds;
  }

  onEarth() {
    return this._roundOff(this._earthAge);
  }

  onMercury() { return this._planetAge('mercury'); }
  onVenus() { return this._planetAge('venus'); }
  onMars() { return this._planetAge('mars'); }
  onJupiter() { return this._planetAge('jupiter'); }
  onSaturn() { return this._planetAge('saturn'); }
  onUranus() { return this._planetAge('uranus'); }
  onNeptune() { return this._planetAge('neptune'); }

  _planetAge(planet) {
    let age = this._earthAge / ORBITAL_PERIOD[planet];
    return this._roundOff(age);
  }

  get _earthAge() {
    return parseFloat(this.seconds) / 31557600;
  }

  _roundOff(age) {
    return parseFloat(age.toFixed(2));
  }
}
