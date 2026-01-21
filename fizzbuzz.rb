class FizzBuzz
  def self.generate(n)
    if n % 15 == 0
      "FizzBuzz"
    elsif n % 3 == 0
      "Fizz"
    elsif n % 5 == 0
      "Buzz"
    else
      n.to_s
    end
  end

  def self.run(limit = 100)
    (1..limit).map { |i| generate(i) }
  end
end
