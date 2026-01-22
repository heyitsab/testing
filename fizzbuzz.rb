class FizzBuzz
  def fizzbuzz(number)
    return "FizzBuzz" if (number % 15).zero?
    return "Fizz" if (number % 3).zero?
    return "Buzz" if (number % 5).zero?
    number.to_s
  end

  def run(start_num = 1, end_num = 100)
    (start_num..end_num).map { |num| fizzbuzz(num) }
  end
end
