# String Calculator

This project is a simple **String Calculator** implemented in Ruby, designed to demonstrate clean code practices, unit testing, and usage of version control with Git.

## Features

The String Calculator supports the following features:

1. **Empty String Handling**: Returns `0` for empty input.
2. **Single Number Input**: Returns the number itself.
3. **Multiple Numbers (Comma-Delimited)**: Returns the sum of all numbers.
4. **Newline Delimiter**: Supports newline as a delimiter.
5. **Custom Delimiters**: Allows defining custom delimiters.
6. **Error Handling**: Throws an error when input contains negative numbers.
7. **Ignore Large Numbers**: Numbers greater than 1000 are ignored.

## Getting Started

### Prerequisites
- Ruby (version 3.0 or later recommended)
- RSpec (for running tests)

### Installation
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd string-calculator
   ```

2. Install dependencies (RSpec):
   ```bash
   gem install rspec
   ```

3. Run tests:
   ```bash
   rspec
   ```

## Usage

```ruby
require './string_calculator'

calculator = StringCalculator.new
puts calculator.add("1,2,3") # Output: 6
```

## Testing
Run the test suite with:
```bash
rspec
```

## Development
This project was developed incrementally, following good Git practices with multiple logical commits to ensure traceability and maintainability.

## Author
Prince

---

Happy coding! 🎉
