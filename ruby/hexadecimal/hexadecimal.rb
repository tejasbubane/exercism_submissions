class Hexadecimal

  HEX_DECIMAL = { 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13,
                  'e' => 14, 'f' => 15 }.freeze

  def initialize(hex_number)
    @hex_digits = hex_number.split('')
  end

  def to_decimal
    @hex_digits.reverse.each_with_index.reduce(0) do |decimal, (number, index)|
      decimal + digit_to_decimal(number, index)
    end
  rescue InvalidHexException
    0
  end

  private

  def digit_to_decimal(number, index)
    if number != '0' && number.to_i == 0
      number = HEX_DECIMAL[number]
      raise InvalidHexException unless number
    end
    number.to_i * (16**index)
  end

  class InvalidHexException < StandardError; end
end
