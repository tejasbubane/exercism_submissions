class Array
  def accumulate
    if block_given?
      result = []
      each do |item|
        result << yield(item)
      end
      result
    else
      to_enum
    end
  end
end
