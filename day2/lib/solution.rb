require_relative 'password'

module Solution
  def self.solve_part_one(input)
    input.reduce(0) do |count, current|
      Password.new(current).count_valid? ? count + 1 : count
    end
  end

  def self.solve_part_two(input)
    input.reduce(0) do |count, current|
      Password.new(current).position_valid? ? count + 1 : count
    end
  end
end
