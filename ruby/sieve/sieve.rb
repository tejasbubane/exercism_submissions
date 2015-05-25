class Sieve
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    array = (2..limit).to_a
    array.each do |pivot|
      remove_multiples(array, pivot)
    end
  end

  private

  def remove_multiples(array, pivot)
    array.each do |number|
      array.delete(number) if number != pivot && number % pivot == 0
    end
  end

end
