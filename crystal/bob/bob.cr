class Bob
  def self.hey(input : String)
    new(input).respond
  end

  getter :input
  def initialize(@input : String); end

  def respond
    if silence?
      "Fine. Be that way!"
    elsif shouting? && !only_numbers?
      "Whoa, chill out!"
    elsif question?
      "Sure."
    else
      "Whatever."
    end
  end

  private def shouting?
    input.upcase == input
  end

  private def question?
    input.ends_with?('?')
  end

  private def only_numbers?
    input.match(/^[0-9\W]+$/)
  end

  private def silence?
    input.strip.empty?
  end

end
