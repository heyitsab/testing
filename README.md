# Alpaca Simulation 🦙

A simple Ruby-based alpaca simulation project featuring a complete Alpaca class with basic animal behaviors and code quality enforcement tools.

## Features

- **Alpaca Class**: A fully-featured Ruby class representing an alpaca with customizable attributes
- **Animal Behaviors**: Feed your alpaca, make it vocalize, and display detailed information
- **Code Quality Checks**: Automated tools to ensure clean code without debug statements
- **Simple API**: Easy-to-use methods for interacting with alpaca instances

## Installation

This project requires Ruby to be installed on your system. No external gems or dependencies are needed.

1. Clone the repository:
   ```bash
   git clone https://github.com/heyitsab/testing.git
   cd testing
   ```

2. Ensure you have Ruby installed:
   ```bash
   ruby --version
   ```

## Usage

### Basic Alpaca Operations

```ruby
require './alpaca.rb'

# Create a new alpaca
my_alpaca = Alpaca.new("Fluffy", 3, "white", 15)

# Display alpaca information
puts my_alpaca.display_info
# Output: Name: Fluffy, Age: 3, Color: white, Wool Length: 15 cm

# Feed your alpaca
puts my_alpaca.feed("grass")
# Output: Alpaca Fluffy is eating grass.

# Make your alpaca vocalize
puts my_alpaca.make_sound
# Output: Alpaca Fluffy says 'Mmmm!'

# Access individual attributes
puts "My alpaca's name is #{my_alpaca.name}"
puts "Wool length: #{my_alpaca.wool_length} cm"
```

### Running Code Quality Checks

The repository includes automated code quality checks to ensure clean, production-ready code:

```bash
ruby alpaca_test.rb
```

This will check for:
- Unwanted `puts` statements in the main code
- Debug `binding.pry` statements that should be removed before production

## File Structure

```
testing/
├── alpaca.rb          # Main Alpaca class implementation
├── alpaca_test.rb     # Code quality checks and validation
├── alpaca.jpg         # Alpaca reference image
└── README.md          # This file
```

## API Reference

### Alpaca Class

#### Constructor
```ruby
Alpaca.new(name, age, color, wool_length)
```
- `name` (String): The alpaca's name
- `age` (Integer): The alpaca's age in years
- `color` (String): The alpaca's color
- `wool_length` (Integer): The length of wool in centimeters

#### Methods

- `feed(food)` - Feed the alpaca with specified food, returns a descriptive message
- `make_sound()` - Make the alpaca vocalize, returns the sound message
- `display_info()` - Returns formatted string with all alpaca information

#### Attributes

All attributes are accessible via getter and setter methods:
- `name` - The alpaca's name
- `age` - The alpaca's age
- `color` - The alpaca's color  
- `wool_length` - The length of the alpaca's wool

## Code Quality

This project maintains high code quality standards:

- **No Debug Statements**: Code is checked for `puts` and `binding.pry` statements
- **Clean Production Code**: Ensures debugging artifacts are removed before commits
- **Automated Validation**: Run `ruby alpaca_test.rb` to validate code quality

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Ensure your code passes quality checks (`ruby alpaca_test.rb`)
4. Commit your changes (`git commit -m 'Add some amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## Example Output

```
Name: Fluffy, Age: 3, Color: white, Wool Length: 15 cm
Alpaca Fluffy is eating grass.
Alpaca Fluffy says 'Mmmm!'
No 'puts' statements found in the provided files.
No 'binding.pry' statements found in the provided files.
```

---

*This is a testing repository demonstrating Ruby class implementation and code quality practices.*