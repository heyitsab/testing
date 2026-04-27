class PutsStatementFoundError < StandardError; end
class BindingPryFoundError < StandardError; end

def check_files_for_puts(files)
  files.each do |file|
    if File.exist?(file)
      File.foreach(file).with_index do |line, line_num|
        # Match `puts` method using a regular expression
        if line.match?(/^\s*puts\s+/)
          raise PutsStatementFoundError, "File '#{file}' contains 'puts' on line #{line_num + 1}"
        end
      end
    else
      puts "File '#{file}' does not exist."
    end
  end
  puts "No 'puts' statements found in the provided files."
end

def check_files_for_binding_pry(files)
  files.each do |file|
    if File.exist?(file)
      File.foreach(file).with_index do |line, line_num|
        # Match `binding.pry` using a regular expression
        if line.match?(/^\s*binding\.pry\s*/)
          raise BindingPryFoundError, "File '#{file}' contains 'binding.pry' on line #{line_num + 1}"
        end
      end
    else
      puts "File '#{file}' does not exist."
    end
  end
  puts "No 'binding.pry' statements found in the provided files."
end

files_to_check = ['dad_joke_generator.rb']

check_files_for_puts(files_to_check)
check_files_for_binding_pry(files_to_check)

require 'minitest/autorun'
require_relative 'dad_joke_generator'

class DadJokeGeneratorTest < Minitest::Test
  def setup
    @generator = DadJokeGenerator.new
  end

  def test_random_joke_returns_a_string
    joke = @generator.random_joke
    assert_instance_of String, joke
    refute_empty joke
  end

  def test_all_jokes_returns_array
    jokes = @generator.all_jokes
    assert_instance_of Array, jokes
    refute_empty jokes
  end

  def test_joke_count_matches_default_jokes
    assert_equal 10, @generator.joke_count
  end

  def test_add_joke_increases_count
    @generator.add_joke("Why did the cookie go to the doctor?", "Because it was feeling crummy!")
    assert_equal 11, @generator.joke_count
  end

  def test_added_joke_appears_in_all_jokes
    setup_phrase = "Why did the cookie go to the doctor?"
    punchline = "Because it was feeling crummy!"
    @generator.add_joke(setup_phrase, punchline)
    assert @generator.all_jokes.any? { |joke| joke.include?(setup_phrase) && joke.include?(punchline) }
  end

  def test_random_joke_is_from_joke_list
    joke = @generator.random_joke
    assert @generator.all_jokes.include?(joke)
  end
end
