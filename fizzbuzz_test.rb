require 'minitest/autorun'
require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_number_divisible_by_3_returns_fizz
    assert_equal "Fizz", FizzBuzz.convert(3)
    assert_equal "Fizz", FizzBuzz.convert(6)
    assert_equal "Fizz", FizzBuzz.convert(9)
  end

  def test_number_divisible_by_5_returns_buzz
    assert_equal "Buzz", FizzBuzz.convert(5)
    assert_equal "Buzz", FizzBuzz.convert(10)
    assert_equal "Buzz", FizzBuzz.convert(20)
  end

  def test_number_divisible_by_both_3_and_5_returns_fizzbuzz
    assert_equal "FizzBuzz", FizzBuzz.convert(15)
    assert_equal "FizzBuzz", FizzBuzz.convert(30)
    assert_equal "FizzBuzz", FizzBuzz.convert(45)
  end

  def test_number_not_divisible_by_3_or_5_returns_number
    assert_equal "1", FizzBuzz.convert(1)
    assert_equal "2", FizzBuzz.convert(2)
    assert_equal "4", FizzBuzz.convert(4)
    assert_equal "7", FizzBuzz.convert(7)
  end

  def test_sequence_generates_correct_output
    expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    assert_equal expected, FizzBuzz.sequence(1, 15)
  end

  def test_sequence_with_single_number
    assert_equal ["Fizz"], FizzBuzz.sequence(3, 3)
  end
end
