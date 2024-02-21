# frozen_string_literal: true

# Performs calculations on strings containing numbers.
class StringCalculator
  # Adds numbers from a string, returning the sum.
  #
  # @param input_string [String] The string containing numbers to be added.
  # @return [Integer] The sum of the numbers in the string.
  def add(input_string)
    return 0 if input_string.nil? || input_string.empty?

    delimiter, numbers = extract_delimiter_and_numbers(input_string)
    numbers = numbers.split(/[\n#{delimiter}]/).map(&:to_i)
    handle_negatives(numbers)

    numbers.sum
  end

  private

  # Extracts the delimiter and numbers from the input string.
  #
  # @param input_string [String] The input string containing numbers.
  # @return [Array(String, String)] The delimiter and numbers extracted from the input string.
  def extract_delimiter_and_numbers(input_string)
    if input_string.start_with?('//')
      delimiter = input_string[2]
      numbers = input_string[4..]
    else
      delimiter = ','
      numbers = input_string
    end
    [delimiter, numbers]
  end

  # Raises an exception if any negative numbers are present in the input array.
  #
  # @param numbers [Array<Integer>] The array of numbers to be checked for negativity.
  # @raise [RuntimeError] If negative numbers are present in the input array.
  def handle_negatives(numbers)
    negatives = numbers.select(&:negative?)
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
