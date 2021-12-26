class AssemblyLine
  attr_reader :speed

  PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    speed * PER_HOUR * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  def success_rate
    case speed
    when *(1..4).to_a
      1.0
    when *(5..8).to_a
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end
