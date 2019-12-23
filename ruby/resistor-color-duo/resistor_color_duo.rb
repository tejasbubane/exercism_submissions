module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(colors)
    first, second = colors
    COLORS.index(first) * 10 + COLORS.index(second)
  end
end
