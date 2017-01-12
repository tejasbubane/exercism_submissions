export default function score(word) {
  if(!word) { return 0; }
  return word.split('').reduce((acc, letter) => acc + _score(letter), 0);
}

const SCORES = {
  'AEIOULNRST': 1,
  'DG': 2,
  'BCMP': 3,
  'FHVWY': 4,
  'K': 5,
  'JX': 8,
  'QZ': 10
};

function _score(letter) {
  let key = Object.keys(SCORES)
                  .find((key) => new RegExp(letter, 'i').test(key));
  return SCORES[key];
}
