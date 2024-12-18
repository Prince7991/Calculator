
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      custom_delimiter, numbers = numbers[2..].split("\n", 2)
      delimiter = Regexp.escape(custom_delimiter)
    end

    nums = numbers.split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    raise "Negative numbers not allowed: #{negatives.join(',')}" unless negatives.empty?

    nums.sum
  end
end
