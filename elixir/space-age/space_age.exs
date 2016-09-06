defmodule SpaceAge do
  @relative_year %{
    :mercury => 0.2408467,
    :venus => 0.61519726,
    :earth => 1,
    :mars => 1.8808158,
    :jupiter => 11.862615,
    :saturn => 29.447498,
    :uranus => 84.016846,
    :neptune => 164.79132
  }

  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    earth_years(seconds) / @relative_year[planet]
  end

  @spec earth_years(pos_integer) :: float
  defp earth_years(seconds) do
    earth_year_seconds = 31557600
    seconds / earth_year_seconds
  end
end
