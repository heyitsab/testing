class Alpaca
  attr_accessor :name, :age, :color, :wool_length

  def initialize(name, age, color, wool_length)
    @name = name
    @age = age
    @color = color
    @wool_length = wool_length
  end

  def shear
  end

  def feed(food)
    "Alpaca #{@name} is eating #{food}."
  end

  def make_sound
    "Alpaca #{@name} says 'Mmmm!'"
  end

  def display_info
    "Name: #{@name}, Age: #{@age}, Color: #{@color}, Wool Length: #{@wool_length} cm"
  end
end
