require_relative 'password'

module Solution
  def self.solve_part_one(input)
    input.reduce(0) do |count, current|
      count + (Password.new(current).count_valid? ? 1 : 0)
    end
  end
end
