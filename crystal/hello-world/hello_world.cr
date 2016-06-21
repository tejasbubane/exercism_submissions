module HelloWorld
  def self.hello()
    "Hello, World"
  end

  def self.hello(name : String)
    "Hello, #{name}"
  end
end
