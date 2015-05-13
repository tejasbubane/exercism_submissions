module HelloWorld
  def self.hello(name)
    if name.empty?
      "Hello, world!"
    else
      "Hello, #{name}!"
    end
  end
end
