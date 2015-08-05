class Trinary
  def initialize(number)
    @number = number
  end

  def to_decimal
    digits.reverse.each_with_index.reduce(0) do |decimal, (digit, index)|
      decimal + digit.to_i * (3 ** index)
    end
  end

  private

  def digits
    @number.split('')
  end
end
