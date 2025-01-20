defmodule Triangle do
  def kind(a, b, c) do
    case validate(a, b, c) do
      {:ok, sides} -> {:ok, find_kind(sides)}
      {:error, message} -> {:error, message}
    end
  end

  defp validate(a, b, c) do
    cond do
      a <= 0 or b <= 0 or c <= 0 -> {:error, "all side lengths must be positive"}
      a + b < c or b + c < a or a + c < b -> {:error, "side lengths violate triangle inequality"}
      true -> {:ok, {a, b, c}}
    end
  end

  defp find_kind({a, b, c}) do
    cond do
      a == b and b == c -> :equilateral
      a == b or b == c or a == c -> :isosceles
      true -> :scalene
    end
  end
end
