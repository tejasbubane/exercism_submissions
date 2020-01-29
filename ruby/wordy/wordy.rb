class WordProblem
  attr_reader :statement

  PROBLEM_REGEX = /What is (-?\d+) (plus|multiplied by|minus|divided by) (-?\d+)( (plus|multiplied by|minus|divided by) (-?\d+))?\?/

  def initialize(statement)
    @statement = statement
  end

  def answer
    _, x, op1, y, _, op2, z = PROBLEM_REGEX.match(statement).to_a
    raise ArgumentError unless x

    result = x.to_i.send(operator_method(op1), y.to_i)
    op2 ? result.send(operator_method(op2), z.to_i) : result
  end

  private

  def operator_method(operator)
    {
      "plus" => :+,
      "minus" => :-,
      "multiplied by" => :*,
      "divided by" => :/
    }[operator]
  end
end
