defmodule Teenager do
  def hey(input) do
    cond do
      String.strip(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") -> "Sure."
      String.upcase(input) == input && !only_numbers(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp only_numbers(input) do
    input =~ ~r/^[0-9,.\s]*$/
  end
end
