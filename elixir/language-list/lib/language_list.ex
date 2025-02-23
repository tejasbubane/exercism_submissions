defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_head | tail] = list
    tail
  end

  def first(list) do
    [head | _tail] = list
    head
  end

  def count([_head | tail]) do
    1 + count(tail)
  end

  def count([]) do
    0
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
