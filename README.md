# String Calculator

The String Calculator is a simple Ruby class that performs calculations on strings containing numbers.

## Usage

To use the String Calculator, you can create an instance of the `StringCalculator` class and call the `add` method with a string containing numbers to be added:

```ruby
calculator = StringCalculator.new
result = calculator.add("1,2,3")
puts result # Output: 6
```

### Usage in `irb`

You can also use the StringCalculator directly in an `irb` session. Here's an example:

```ruby
~/string_calculator ‹ruby-3.2.3› ‹main●›
╰─$ irb
3.2.3 :001 > require './string_calculator'
 => true
3.2.3 :002 > calculator = StringCalculator.new
 => #<StringCalculator:0x00007f37e6f19760>
3.2.3 :003 > calculator.add "//;\n1;2;3"
 => 6
```

## Custom Delimiters

The String Calculator also supports custom delimiters. You can specify a custom delimiter at the beginning of the input string using the format `//[delimiter]\n[numbers...]`.

For example, to use a semicolon (`;`) as the delimiter:

```ruby
calculator = StringCalculator.new
result = calculator.add("//;\n1;2;3")
puts result # Output: 6
```
