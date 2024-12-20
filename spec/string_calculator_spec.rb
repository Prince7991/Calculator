require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    calculator = StringCalculator.new
    expect(calculator.add('')).to eq(0)
  end

  
end
