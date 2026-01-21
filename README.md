# Alpaca Testing Repository

A simple Ruby project featuring an Alpaca class implementation with automated code quality checks.

## Overview

This repository contains a Ruby implementation of an Alpaca class that models alpaca characteristics and behaviors. It also includes a code quality testing framework that checks for debugging statements in the codebase.

## Features

### Alpaca Class (`alpaca.rb`)

The `Alpaca` class provides the following functionality:

- **Attributes:**
  - `name` - The alpaca's name
  - `age` - The alpaca's age
  - `color` - The alpaca's color
  - `wool_length` - The length of the alpaca's wool (in cm)

- **Methods:**
  - `initialize(name, age, color, wool_length)` - Create a new alpaca instance
  - `feed(food)` - Feed the alpaca a specific food item
  - `make_sound` - Make the alpaca produce its characteristic sound
  - `display_info` - Display all information about the alpaca

### Code Quality Checks (`alpaca_test.rb`)

The testing file includes automated checks to ensure code quality:

- **PutsStatementFoundError** - Detects and prevents `puts` statements in the codebase
- **BindingPryFoundError** - Detects and prevents `binding.pry` debugging statements
- Automatically scans `alpaca.rb` for these debugging artifacts

## Requirements

- Ruby 3.0 or higher

## Usage

### Creating and Using an Alpaca

```ruby
require_relative 'alpaca'

# Create a new alpaca
my_alpaca = Alpaca.new("Fluffy", 3, "white", 15)

# Display alpaca information
puts my_alpaca.display_info
# Output: Name: Fluffy, Age: 3, Color: white, Wool Length: 15 cm

# Feed the alpaca
puts my_alpaca.feed("grass")
# Output: Alpaca Fluffy is eating grass.

# Make the alpaca produce a sound
puts my_alpaca.make_sound
# Output: Alpaca Fluffy says 'Mmmm!'
```

## Running Tests

Run the code quality checks:

```bash
ruby alpaca_test.rb
```

Expected output when all checks pass:
```
No 'puts' statements found in the provided files.
No 'binding.pry' statements found in the provided files.
```

## Repository Structure

```
.
├── alpaca.rb          # Main Alpaca class implementation
├── alpaca_test.rb     # Code quality testing framework
├── alpaca.jpg         # Alpaca image (600x600 JPEG)
└── .devcontainer      # Development container configuration
```

## About

This repository serves as a simple example of Ruby object-oriented programming with automated code quality checks. The code quality framework ensures that debugging statements are not accidentally committed to the repository.

## Image Attribution

The repository includes an alpaca image (`alpaca.jpg`) for reference and documentation purposes.
