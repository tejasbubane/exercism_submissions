class SecretHandshake
  attr_reader :code

  CODES = ["jump", "close your eyes", "double blink", "wink"]

  def initialize(code)
    @code = code
  end

  def commands
    return [] unless code.is_a?(Integer)

    binary = code.to_s(2).rjust(4, '0')
    result = binary[-4..].split('').map.with_index do |bit, index|
      CODES[index] if bit.to_i == 1
    end.compact

    most_significant = binary[-5]
    # Generated array is in reverse, so for 1 return as is
    most_significant.to_i == 1 ? result : result.reverse
  end
end
