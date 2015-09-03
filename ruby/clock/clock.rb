class Clock

  def self.at(hrs, mins = 0)
    new(hrs, mins)
  end

  attr_reader :hrs, :mins

  def initialize(hrs, mins = 0)
    @hrs = hrs
    @mins = mins
    @abs_mins = hrs * 60 + mins
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
    other.instance_of?(Clock) && hrs == other.hrs && mins == other.mins
  end

  def to_s
    "#{double_digit(hrs)}:#{double_digit(mins)}"
  end

  private

  def double_digit(number)
    number < 10 ? "0#{number}" : number.to_s
  end

  def clock_from(number)
    [number / 60, number % 60]
  end

end
