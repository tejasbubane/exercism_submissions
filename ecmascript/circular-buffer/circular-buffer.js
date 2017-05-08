export class BufferFullException extends Error {};
export class BufferEmptyException extends Error {};

const circularBuffer = (length) => {
  let buffer = [];

  const read = () => {
    if(isEmpty()) throw new BufferEmptyException();
    return buffer.pop(); // Remove last and return
  };

  const write = (el) => {
    if(isFull()) throw new BufferFullException();
    if(el) buffer.unshift(el); // Add to the front of array
  };

  const clear = () => {
    buffer = [];
  };

  const forceWrite = (el) => {
    // Replace last (oldest) but make `el` to be newest (first)
    if(isFull()) buffer = [el, ...buffer.slice(0, buffer.length - 1)];
    else write(el);
  };

  const isFull = () => {
    return buffer.length === length;
  };

  const isEmpty = () => {
    return buffer.length === 0;
  };

  return {read, write, clear, forceWrite};
};

export default circularBuffer;
