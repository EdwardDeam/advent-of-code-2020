require 'solution'

RSpec.describe Solution do
  let(:input) do
    [
      '..##.......',
      '#...#...#..',
      '.#....#..#.',
      '..#.#...#.#',
      '.#...##..#.',
      '..#.##.....',
      '.#.#.#....#',
      '.#........#',
      '#.##...#...',
      '#...##....#',
      '.#..#...#.#'
    ]
  end

  describe '.solve_part_one' do
    it 'returns the solution' do
      expect(described_class.solve_part_one(input)).to be(7)
    end
  end

  describe '.solve_part_two' do
    it 'returns the solution' do
      expect(described_class.solve_part_two(input)).to be(336)
    end
  end
end
