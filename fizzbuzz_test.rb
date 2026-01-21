require 'minitest/autorun'
require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_number_not_divisible_by_3_or_5
    assert_equal "1", FizzBuzz.generate(1)
    assert_equal "2", FizzBuzz.generate(2)
    assert_equal "7", FizzBuzz.generate(7)
  end

  def test_number_divisible_by_3
    assert_equal "Fizz", FizzBuzz.generate(3)
    assert_equal "Fizz", FizzBuzz.generate(6)
    assert_equal "Fizz", FizzBuzz.generate(9)
  end

  def test_number_divisible_by_5
    assert_equal "Buzz", FizzBuzz.generate(5)
    assert_equal "Buzz", FizzBuzz.generate(10)
    assert_equal "Buzz", FizzBuzz.generate(20)
  end

  def test_number_divisible_by_both_3_and_5
    assert_equal "FizzBuzz", FizzBuzz.generate(15)
    assert_equal "FizzBuzz", FizzBuzz.generate(30)
    assert_equal "FizzBuzz", FizzBuzz.generate(45)
  end

  def test_run_returns_array
    result = FizzBuzz.run(15)
    assert_instance_of Array, result
    assert_equal 15, result.length
  end

  def test_run_with_custom_limit
    result = FizzBuzz.run(5)
    assert_equal ["1", "2", "Fizz", "4", "Buzz"], result
  end

  def test_run_first_15_numbers
    result = FizzBuzz.run(15)
    expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    assert_equal expected, result
  end
end
