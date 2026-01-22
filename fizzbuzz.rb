class FizzBuzz
  def self.convert(number)
    return "FizzBuzz" if number % 15 == 0
    return "Fizz" if number % 3 == 0
    return "Buzz" if number % 5 == 0
    number.to_s
  end

  def self.sequence(start_num, end_num)
    (start_num..end_num).map { |num| convert(num) }
  end
end
