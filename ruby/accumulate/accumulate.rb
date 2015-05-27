class Array
  def accumulate
    result = []
    each do |item|
      result << yield(item)
    end
    result
  end
end
