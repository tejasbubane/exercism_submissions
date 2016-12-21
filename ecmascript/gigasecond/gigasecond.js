const GIGA = 1000000000;

export default class Gigasecond {
  constructor(date) {
    this.inputDate = date;
  }

  date() {
    return new Date(this.inputDate.getTime() + GIGA * 1000);
  }
}
