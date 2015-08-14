module Gigasecond
  GIGA = 10**9

  def self.from(timestamp)
    timestamp + GIGA
  end
end
