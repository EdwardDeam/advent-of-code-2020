require_relative 'lib/solution'

input = File.read('input.txt').split("\n")

puts "Part one: #{Solution.solve_part_one(input)}"
puts "Part two: #{Solution.solve_part_two(input)}"
