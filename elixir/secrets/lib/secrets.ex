import Bitwise

defmodule Secrets do
  def secret_add(n) do
    fn x -> x + n end
  end

  def secret_subtract(n) do
    fn x -> x - n end
  end

  def secret_multiply(n) do
    fn x -> x * n end
  end

  def secret_divide(n) do
    fn x -> div(x, n) end
  end

  def secret_and(n) do
    fn x -> band(x, n) end
  end

  def secret_xor(n) do
    fn x -> bxor(x, n) end
  end

  def secret_combine(fn1, fn2) do
    fn x -> fn2.(fn1.(x)) end
  end
end
