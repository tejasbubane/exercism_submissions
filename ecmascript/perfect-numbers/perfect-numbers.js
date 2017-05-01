const _factors = (number) => {
  let factors = [];
  for(let i = 1; i < number; i++) {
    if(number % i === 0) factors.push(i);
  }
  return factors;
}

export default class PerfectNumbers {
  classify(number) {
    if(number <= 0) return 'Classification is only possible for natural numbers.';

    let sum = _factors(number).reduce(((a, b) => a + b), 0);

    if(sum === number) return 'perfect';
    else if (sum > number) return 'abundant';
    else return 'deficient';
  }
}
