class BinarySearch
  attr_reader :list

  def initialize(list = [])
    raise ArgumentError if list != list.sort

    @list = list
  end

  def search_for(element)
    search(element, 0, list.length - 1)
  end

  def middle
    list.length / 2
  end

  private

  def search(element, lower, upper)
    raise "value not in array" if lower > upper

    length = upper - lower + 1
    mid = lower + length / 2
    mid_val = list[mid]

    if element == mid_val
      mid
    elsif element < mid_val
      search(element, lower, mid - 1)
    else
      search(element, mid + 1, upper)
    end
  end
end
