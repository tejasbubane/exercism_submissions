module Raindrops
  def self.drops(number : Int32)
    input = ""
    input += "Pling" if number % 3 == 0
    input += "Plang" if number % 5 == 0
    input += "Plong" if number % 7 == 0

    input.empty? ? number.to_s : input
  end
end
