defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> String.split
    |> Enum.map(&extract(&1))
    |> Enum.join
  end

  defp extract(word) do
    [String.first(word) | Regex.scan(~r/[A-Z]/, String.slice(word, 1..-1))]
    |> Enum.join
    |> String.upcase
  end
end
