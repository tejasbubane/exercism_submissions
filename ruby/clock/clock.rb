class Clock

  def self.at(hrs, mins = 0)
    new(hrs, mins)
  end

  def initialize(hrs, mins = 0)
    @abs_mins = hrs * 60 + mins
  end

  def hours
    @hours ||= @abs_mins / 60
  end

  def minutes
    @minutes ||= @abs_mins % 60
  end

  def +(number)
    hrs, mins = clock_from(@abs_mins + number)
    Clock.new(hrs % 24, mins)
  end

  def -(number)
    hrs, mins = clock_from(@abs_mins - number)
    Clock.new(hrs % 24, mins)
  end

  def ==(other)
    other.is_a?(Clock) &&
      hours == other.hours && minutes == other.minutes
  end

  def to_s
    "#{double_digit(hours)}:#{double_digit(minutes)}"
  end

  private

  def double_digit(number)
    number < 10 ? "0#{number}" : number.to_s
  end

  def clock_from(total_minutes)
    [total_minutes / 60, total_minutes % 60]
  end

end
