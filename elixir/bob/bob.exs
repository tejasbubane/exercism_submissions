defmodule Teenager do

  def hey(input) do
    cond do
      silence?(input) ->
        "Fine. Be that way!"
      shouting?(input) && !numbers?(input) ->
        "Whoa, chill out!"
      question?(input) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp shouting?(input) do
    String.upcase(input) == input
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp silence?(input) do
    String.strip(input) == ""
  end

  defp numbers?(input) do
    String.match?(input, ~r/^[0-9\s,\?!]+$/)
  end

end
