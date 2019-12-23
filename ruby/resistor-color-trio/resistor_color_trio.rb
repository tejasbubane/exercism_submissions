class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  attr_reader :colors

  def initialize(colors)
    @colors = colors
  end

  def label
    first, second, third = indexes
    value = (first * 10 + second) * (10**third)
    unit = "ohms"

    if value >= 1000
      unit = "kiloohms"
      value /= 1000
    end
    "Resistor value: #{value} #{unit}"
  end

  private

  def indexes
    colors.map do |c|
      index = COLORS.index(c)
      raise ArgumentError unless index

      index
    end
  end
end
