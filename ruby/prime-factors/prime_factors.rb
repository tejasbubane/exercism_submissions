require 'prime'

module PrimeFactors
  def self.for(number)
    primes = Prime.each(number)
    prime = primes.first
    factors = []

    while(number != 1) do
      if number % prime == 0
        factors << prime
        number = number / prime
      else
        prime = primes.next
      end
    end
    factors
  end
end
