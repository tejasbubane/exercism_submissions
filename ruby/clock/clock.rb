class Clock
  attr_reader :hours, :minutes

  def initialize(hour: 0, minute: 0)
    @hours = (hour + (minute / 60)) % 24
    @minutes = minute % 60
  end

  def to_s
    pad_hours = hours < 10 ? "0#{hours}" : hours.to_s
    pad_minutes = minutes < 10 ? "0#{minutes}" : minutes.to_s
    "#{pad_hours}:#{pad_minutes}"
  end

  def +(other)
    Clock.new(hour: self.hours + other.hours,
              minute: self.minutes + other.minutes)
  end

  def -(other)
    Clock.new(hour: self.hours - other.hours,
              minute: self.minutes - other.minutes)
  end

  def ==(other)
    self.hours == other.hours &&
      self.minutes == other.minutes
  end
end
