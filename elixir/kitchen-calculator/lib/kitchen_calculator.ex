defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, quantity}) do
    {:milliliter, quantity * 1}
  end

  def to_milliliter({:cup, quantity}) do
    {:milliliter, quantity * 240}
  end

  def to_milliliter({:fluid_ounce, quantity}) do
    {:milliliter, quantity * 30}
  end

  def to_milliliter({:teaspoon, quantity}) do
    {:milliliter, quantity * 5}
  end

  def to_milliliter({:tablespoon, quantity}) do
    {:milliliter, quantity * 15}
  end

  def from_milliliter(volume_pair, :milliliter) do
    volume_pair
  end

  def from_milliliter({:milliliter, quantity}, :cup) do
    {:cup, quantity / 240}
  end

  def from_milliliter({:milliliter, quantity}, :fluid_ounce) do
    {:fluid_ounce, quantity / 30}
  end

  def from_milliliter({:milliliter, quantity}, :teaspoon) do
    {:teaspoon, quantity / 5}
  end

  def from_milliliter({:milliliter, quantity}, :tablespoon) do
    {:tablespoon, quantity / 15}
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair) |> from_milliliter(unit)
  end
end
