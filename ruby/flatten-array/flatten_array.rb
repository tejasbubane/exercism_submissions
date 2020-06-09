module FlattenArray
  def self.flatten(array)
    return [] if array == []

    first, *rest = array
    return self.flatten(rest) unless first

    if first.is_a?(Array)
      self.flatten(first) + self.flatten(rest)
    else
      [first] + self.flatten(rest)
    end
  end
end
