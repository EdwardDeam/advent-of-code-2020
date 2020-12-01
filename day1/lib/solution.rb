require_relative 'input_util'
require_relative 'match'

module Solution
  def self.solve_part_one(input)
    multiply Match.find_pair(input)
  end

  def self.solve_part_two(input)
    multiply Match.find_trio(input)
  end

  def self.multiply(numbers)
    numbers.inject(:*)
  end
end
