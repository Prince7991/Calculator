require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 for an empty string' do
    calculator = StringCalculator.new
    expect(calculator.add('')).to eq(0)
  end

  it 'returns the number itself for a single number' do
    calculator = StringCalculator.new
    expect(calculator.add('5')).to eq(5)
  end

  it 'returns the sum of two numbers' do
    calculator = StringCalculator.new
    expect(calculator.add('1,2')).to eq(3)
  end

  it 'returns the sum of multiple numbers' do
    calculator = StringCalculator.new
    expect(calculator.add('1,2,3')).to eq(6)
  end

  it 'handles new line as a delimiter' do
    calculator = StringCalculator.new
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it 'handles custom delimiters' do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it 'raises an error for negative numbers' do
    calculator = StringCalculator.new
    expect { calculator.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
  end

  it 'raises an error for multiple negative numbers' do
    calculator = StringCalculator.new
    expect { calculator.add("-1,-2,3") }.to raise_error("Negative numbers not allowed: -1,-2")
  end
end
