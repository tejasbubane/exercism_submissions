class Fixnum
  ROMAN = {
    0 => '',
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  SLABS = [
    #   first,   half,    last
    [      1,      5,      10 ],
    [     10,     50,     100 ],
    [    100,    500,    1000 ],
    [   1000,   5000,   10000 ]
  ]

  def to_roman
    number = self # not mutating self

    SLABS.map do |first, half, last|
      remainder = number % last
      next if number.zero? || remainder.zero?
      number -= remainder

      if remainder == (last - first)
        ROMAN[first] + ROMAN[last]
      elsif remainder == half
        ROMAN[half]
      elsif remainder == (half - first)
        ROMAN[first] + ROMAN[half]
      elsif remainder == (half + first)
        ROMAN[half] + ROMAN[first]
      elsif remainder > half
        ROMAN[half] + ROMAN[first] * ((remainder - half) / first)
      else
        ROMAN[first] * (remainder / first)
      end
    end.reverse.join('')
  end
end
