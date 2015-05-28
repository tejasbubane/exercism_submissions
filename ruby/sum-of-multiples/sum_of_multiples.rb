class SumOfMultiples
  def self.to(number, multiples_of = [3, 5])
    (1...number).select do |n|
      multiples_of.any? { |m| n % m == 0 }
    end.inject(0, :+)
  end

  def initialize(*args)
    @multiples_of = *args
  end

  def to(number)
    self.class.to(number, @multiples_of)
  end
end
