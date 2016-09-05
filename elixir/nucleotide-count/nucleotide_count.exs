defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) when nucleotide in @nucleotides do
    validate(strand)
    Enum.count strand, &(&1 == nucleotide)
  end
  def count(strand, nucleotide) do
    raise ArgumentError
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    validate(strand)

    @nucleotides
    |> Enum.map(&({&1, count(strand, &1)}))
    |> Enum.into(%{})
  end

  defp validate(strand) do
    strand
    |> Enum.each(fn (nucleotide) ->
      unless nucleotide in @nucleotides do
        raise ArgumentError
      end
    end)
  end
end
