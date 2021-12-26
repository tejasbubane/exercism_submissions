class LogLineParser
  LOG_FORMAT = /\[(.+)\]:\s+(.+)/.freeze

  attr_reader :line

  def initialize(line)
    @line = line
  end

  def message
    matches[2].strip
  end

  def log_level
    matches[1].strip.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  def matches
    @matches ||= LOG_FORMAT.match(line)
  end
end
