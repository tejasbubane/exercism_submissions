export default function transform(oldData) {
  var newData = {};
  for(let point in oldData) {
    let letters = oldData[point];
    letters.forEach(letter => newData[letter.toLowerCase()] = parseInt(point));
  }
  return newData;
}
