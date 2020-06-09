class Triangle
  attr_reader :a, :b, :c

  def initialize(sides)
    @a, @b, @c = sides
  end

  def equilateral?
    a == b && b == c && legal?
  end

  def isosceles?
    (a == b || b == c || c == a) && legal?
  end

  def scalene?
    !isosceles? && !equilateral? && legal?
  end

  private

  def legal?
    !(a + b <= c || b + c <= a || c + a <= b)
  end
end
