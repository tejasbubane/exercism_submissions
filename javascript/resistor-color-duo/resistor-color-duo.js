const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue',
                'violet', 'grey', 'white'];

export const decodedValue = ([first, second]) => {
  return value(first) * 10 + value(second);
};

const value = color => COLORS.indexOf(color);
