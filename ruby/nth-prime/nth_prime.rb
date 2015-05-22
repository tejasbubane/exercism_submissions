class Prime
  def self.nth(n)
    raise ArgumentError if n == 0

    count = 0
    (1..Float::INFINITY).each do |i|
      count += 1 if prime?(i)
      return i if count == n
    end
  end

  private

  def prime?(n)
    return true if n == 2
    return false if n == 1 || n.even?

    has_factors?(n)
  end

  def has_factors?(n)
    !(3..Math.sqrt(n).to_i).detect do |divisor|
      n % divisor == 0
    end
  end
end
