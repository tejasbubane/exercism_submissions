class Array
  def keep(&predicate)
    map do |el|
      el if predicate.call(el)
    end.compact
  end

  def discard(&predicate)
    map do |el|
      el unless predicate.call(el)
    end.compact
  end
end
