require 'toboggan'

RSpec.describe Toboggan do
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

  describe '#total_trees' do
    it 'returns the total trees hit for right 3 down 1' do
      toboggan = described_class.new(input, 3, 1)
      expect(toboggan.total_trees).to be(7)
    end

    it 'returns the total trees hit for right 1 down 1' do
      toboggan = described_class.new(input, 1, 1)
      expect(toboggan.total_trees).to be(2)
    end

    it 'returns the total trees hit for right 5 down 1' do
      toboggan = described_class.new(input, 5, 1)
      expect(toboggan.total_trees).to be(3)
    end

    it 'returns the total trees hit for right 7 down 1' do
      toboggan = described_class.new(input, 7, 1)
      expect(toboggan.total_trees).to be(4)
    end

    it 'returns the total trees hit for right 1 down 2' do
      toboggan = described_class.new(input, 1, 2)
      expect(toboggan.total_trees).to be(2)
    end
  end
end
