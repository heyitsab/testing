class Alpaca
  attr_accessor :name, :age, :color, :wool_length

  def initialize(name, age, color, wool_length)
    @name = name
    @age = age
    @color = color
    @wool_length = wool_length
  end

  def shear
    if @wool_length > 0
      @wool_length = 0
      "Alpaca #{@name} has been sheared."
    else
      "Alpaca #{@name} has no wool to shear."
    end
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