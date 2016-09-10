defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """

  @spec convert(pos_integer) :: String.t
  def convert(number) do
    result =
      [3, 5, 7]
      |> Enum.map(&(_convert(number, &1)))
      |> Enum.join

    if result == "", do: to_string(number), else: result
  end

  def _convert(number, 3) when rem(number, 3) == 0, do: "Pling"
  def _convert(number, 5) when rem(number, 5) == 0, do: "Plang"
  def _convert(number, 7) when rem(number, 7) == 0, do: "Plong"
  def _convert(_number, _factor), do: nil
end
