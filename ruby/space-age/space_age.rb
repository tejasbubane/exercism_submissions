class SpaceAge

  attr_reader :seconds

  PLANETS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    seconds / 31_557_600
  end

  PLANETS.each do |planet, ratio|
    define_method("on_#{planet}") do
      on_earth / ratio
    end
  end
end
