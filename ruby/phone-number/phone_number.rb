class PhoneNumber
  def initialize(input)
    @input = input
  end

  def number
    @number ||= clean_number
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..-1]}"
  end

  private

  def clean_number
    (digits.length == 10 && no_chars?) ? digits : '0000000000'
  end

  def digits
    remove_1(all_digits)
  end

  def remove_1(number)
    number.length == 11 && number.start_with?('1') ? number[1..-1] : number
  end

  def all_digits
    @input.scan(/\d+/).join
  end

  def no_chars?
    @input.scan(/[a-z]+/).empty?
  end
end
