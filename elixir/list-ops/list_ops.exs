defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(l) do
    count_rec(l, 0)
  end

  defp count_rec([], acc), do: acc
  defp count_rec([_hd|tl], acc) do
    count_rec(tl, acc + 1)
  end

  @spec reverse(list) :: list
  def reverse(l) do
    reverse_rec(l, [])
  end

  defp reverse_rec([], acc), do: acc
  defp reverse_rec([hd|tl], acc) do
    reverse_rec(tl, [hd|acc])
  end

  @spec map(list, (any -> any)) :: list
  def map(l, f) do
    map_rec(l, f, [])
  end

  defp map_rec([], _f, acc), do: reverse(acc) # prepending to the list while recursion, hence reverse
  defp map_rec([hd|tl], f, acc) do
    map_rec(tl, f, [f.(hd) | acc])
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter(l, f) do
    filter_rec(l, f, [])
  end

  defp filter_rec([], _f, acc), do: reverse(acc)
  defp filter_rec([hd|tl], f, acc) do
    if f.(hd) do
      filter_rec(tl, f, [hd|acc])
    else
      filter_rec(tl, f, acc)
    end
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do
    reduce_rec(l, acc, f)
  end

  defp reduce_rec([], acc, _f), do: acc
  defp reduce_rec([hd|tl], acc, f) do
    new_acc = f.(hd, acc)
    reduce_rec(tl, new_acc, f)
  end

  @spec append(list, list) :: list
  def append(a, b) do
    append_rec(reverse(a), b)
  end

  defp append_rec([], b), do: b
  defp append_rec([hd|tl], b) do
    append_rec(tl, [hd|b])
  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do
    ll |> reverse |> reduce([], &append(&1, &2))
  end
end
