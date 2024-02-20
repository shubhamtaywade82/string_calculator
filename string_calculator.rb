# frozen_string_literal: true

# Performs calculations on strings containing numbers.
class StringCalculator
  # Adds numbers from a string, returning the sum.
  #
  # @param input_string [String] The string containing numbers to be added.
  # @return [Integer] The sum of the numbers in the string.
  def add(input_string)
    return 0 if input_string.empty?

    numbers = input_string.split(',').map(&:to_i)
    numbers.sum
  end
end
