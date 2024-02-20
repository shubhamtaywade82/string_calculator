# frozen_string_literal: true

class StringCalculator
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello there, #{name}"
  end
end
