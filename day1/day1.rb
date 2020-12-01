require_relative 'lib/solution'
require_relative 'lib/input_util'

input = InputUtil.read_to_i
puts "Part one: #{Solution.solve_part_one(input)}"
puts "Part two: #{Solution.solve_part_two(input)}"
