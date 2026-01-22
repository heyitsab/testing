require 'minitest/autorun'
require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_returns_fizz_for_multiples_of_3
    assert_equal "Fizz", @fizzbuzz.fizzbuzz(3)
    assert_equal "Fizz", @fizzbuzz.fizzbuzz(6)
    assert_equal "Fizz", @fizzbuzz.fizzbuzz(9)
  end

  def test_returns_buzz_for_multiples_of_5
    assert_equal "Buzz", @fizzbuzz.fizzbuzz(5)
    assert_equal "Buzz", @fizzbuzz.fizzbuzz(10)
    assert_equal "Buzz", @fizzbuzz.fizzbuzz(20)
  end

  def test_returns_fizzbuzz_for_multiples_of_both_3_and_5
    assert_equal "FizzBuzz", @fizzbuzz.fizzbuzz(15)
    assert_equal "FizzBuzz", @fizzbuzz.fizzbuzz(30)
    assert_equal "FizzBuzz", @fizzbuzz.fizzbuzz(45)
  end

  def test_returns_number_as_string_for_other_numbers
    assert_equal "1", @fizzbuzz.fizzbuzz(1)
    assert_equal "2", @fizzbuzz.fizzbuzz(2)
    assert_equal "7", @fizzbuzz.fizzbuzz(7)
  end

  def test_run_method_returns_array_of_results
    result = @fizzbuzz.run(1, 15)
    expected = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    assert_equal expected, result
  end
end
