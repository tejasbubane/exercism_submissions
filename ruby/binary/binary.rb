class Binary
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def to_decimal
    return 0 unless binary?

    digits.each_with_index.inject(0) do |result, (digit, index)|
      result + digit * 2**index
    end
  end

  private

  def digits
    input.chars.reverse.map(&:to_i)
  end

  def binary?
    input =~ /^(0*1*)*$/
  end
end
