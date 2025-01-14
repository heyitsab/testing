class Greeting
  def initialize(name:)
    @name = name
  end

  def perform
    puts "Hello #{@name}"
  end
end
