class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(number)
    number <= data ? insert_left(number) : insert_right(number)
  end

  def each(&block)
    left.each(&block) unless left.nil?
    yield data
    right.each(&block) unless right.nil?
  end

  private

  def insert_left(number)
    if @left.nil?
      @left = Bst.new(number)
    else
      left.insert(number)
    end
  end

  def insert_right(number)
    if @right.nil?
      @right = Bst.new(number)
    else
      right.insert(number)
    end
  end
end
