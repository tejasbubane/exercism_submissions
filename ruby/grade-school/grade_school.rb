class School
  attr_reader :klasses

  def initialize
    @klasses = Hash.new{ |h, k| h[k] = Array.new }
  end

  def add(name, klass)
    @klasses[klass] = @klasses[klass].push(name).sort # keep the names sorted
  end

  def to_hash
    Hash[@klasses.sort] # sort the klass numbers
  end

  def grade(klass)
    @klasses[klass].sort
  end
end
