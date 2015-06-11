class Series
  attr_reader :numbers

  def initialize(input)
    @numbers = input.split('').map(&:to_i)
  end

  def slices(n)
    raise ArgumentError if numbers.length < n

    numbers.each_with_index.map do |number, i|
      numbers[i...(i+n)] unless i+n > numbers.length
    end.compact
  end
end
