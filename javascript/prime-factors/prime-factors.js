export default class primeFactors {
  for(number) {
    let divisor = 2,
        factors = [];

    while(number > 1) {
      if(number % divisor === 0) {
        number = number / divisor;
        factors.push(divisor);
      }
      else {
        divisor++;
      }
    }
    return factors;
  };
};
