class Clock {
  constructor(hr, min = 0) {
    this.hr = hr;
    this.min = min;
  }

  plus(min) {
    return new Clock(this.hr, this.min + min);
  }

  minus(min) {
    return new Clock(this.hr, this.min - min);
  }

  equals(other) {
    let [hr, min] = this._hrMin();
    let [otherHr, otherMin] = other._hrMin();
    return hr === otherHr && min == otherMin;
  }

  toString() {
    let [hr, min] = this._hrMin();
    return `${hr}:${min}`;
  }

  _hrMin() {
    let min = this.min % 60;
    let minutesCarryOver = parseInt(this.min / 60);
    if(min < 0) {
      min = 60 + min;
      minutesCarryOver -= 1;
    }

    let hr = (this.hr + minutesCarryOver) % 24;
    if (hr < 0) { hr = 24 + hr; }

    return this._format(hr, min);
  }

  _format(hr, min) {
    if(min < 10) { min = `0${min}`; }
    if (hr < 10) { hr = `0${hr}`; }
    return [hr, min];
  }
}

export default function at(hr, min) {
  return new Clock(hr, min);
}
