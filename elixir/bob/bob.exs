defmodule Bob do

  def hey(input) do
    cond do
      question?(input) ->
        "Sure."
      silence?(input) ->
        "Fine. Be that way!"
      shouting?(input) && !numbers?(input) ->
        "Whoa, chill out!"
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
