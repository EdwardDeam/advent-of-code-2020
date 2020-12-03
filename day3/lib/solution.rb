require_relative 'toboggan'

module Solution
  def self.solve_part_one(input)
    Toboggan.new(input, 3, 1).total_trees
  end

  def self.solve_part_two(input)
    routes = [
      [1, 1],
      [3, 1],
      [5, 1],
      [7, 1],
      [1, 2]
    ]

    routes.reduce(1) do |count, (right, down)|
      count * Toboggan.new(input, right, down).total_trees
    end
  end
end
