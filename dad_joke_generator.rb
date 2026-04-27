class DadJokeGenerator
  JOKES = [
    { setup: "Why don't scientists trust atoms?", punchline: "Because they make up everything!" },
    { setup: "I'm reading a book about anti-gravity.", punchline: "It's impossible to put down!" },
    { setup: "Did you hear about the mathematician who's afraid of negative numbers?", punchline: "He'll stop at nothing to avoid them!" },
    { setup: "Why did the scarecrow win an award?", punchline: "Because he was outstanding in his field!" },
    { setup: "I used to hate facial hair.", punchline: "But then it grew on me." },
    { setup: "What do you call cheese that isn't yours?", punchline: "Nacho cheese!" },
    { setup: "Why can't you give Elsa a balloon?", punchline: "Because she'll let it go!" },
    { setup: "What do you call a fish without eyes?", punchline: "A fsh!" },
    { setup: "How does a penguin build its house?", punchline: "Igloos it together!" },
    { setup: "Why did the bicycle fall over?", punchline: "Because it was two-tired!" }
  ].freeze

  def initialize
    @jokes = JOKES.dup
  end

  def random_joke
    joke = @jokes.sample
    format_joke(joke)
  end

  def all_jokes
    @jokes.map { |joke| format_joke(joke) }
  end

  def add_joke(setup, punchline)
    @jokes << { setup: setup, punchline: punchline }
  end

  def joke_count
    @jokes.length
  end

  private

  def format_joke(joke)
    "#{joke[:setup]} #{joke[:punchline]}"
  end
end
