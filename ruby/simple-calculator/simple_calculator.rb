class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    new(first_operand, second_operand, operation).calculate
  end


  attr_reader :first_operand, :second_operand, :operation

  def initialize(first_operand, second_operand, operation)
    @first_operand = first_operand
    @second_operand = second_operand
    @operation = operation
    check
  end

  def calculate
    return "Division by zero is not allowed." if second_operand == 0 && operation == '/'

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end

  private

  def result
    case operation
    when '+'
      first_operand + second_operand
    when '*'
      first_operand * second_operand
    when '/'
      first_operand / second_operand
    end
  end

  def check
    check_operands
    check_operation
  end

  def check_operands
    return if first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    raise ArgumentError
  end

  def check_operation
    return if (%w[+ * /]).include?(operation)

    raise UnsupportedOperation
  end

  class UnsupportedOperation < StandardError; end
end
