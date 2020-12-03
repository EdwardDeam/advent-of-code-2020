require_relative 'lib/solution'

input = File.read('input.txt').split("\n")

puts "part one: #{Solution.solve_part_one(input)}"
puts "part two: #{Solution.solve_part_two(input)}"
