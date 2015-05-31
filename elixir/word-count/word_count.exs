defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    word_count words(sentence), %{}
  end

  defp words(input) do
    Regex.scan(~r/[\w\d\-]+/u, format input) |> List.flatten
  end

  defp word_count([], acc) do
    acc
  end

  defp word_count([hd|tl], acc) do
    acc = case acc[hd] do
            nil -> Map.put(acc, hd, 1)
            _ -> Map.put(acc, hd, acc[hd] + 1)
          end
    word_count(tl, acc)
  end

  defp format(input) do
    input |> String.downcase |> String.replace("_", " ")
  end
end
