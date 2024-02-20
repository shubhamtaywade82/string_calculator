# frozen_string_literal: true

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:name) { 'TestUser' }
  let(:user) { StringCalculator.new('TestUser') }

  context 'greeting method is called with a name  ' do
    it "greets someone with  'Hello there' and their name" do
      expect(user.greet).to eq "Hello there, #{name}"
    end
  end
end
