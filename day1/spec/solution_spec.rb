require 'solution'

RSpec.describe Solution do
  let(:input) { [1721, 979, 366, 299, 675, 1456] }

  describe '.solve_part_one' do
    it 'finds the solution' do
      expect(described_class.solve_part_one(input)).to be(514_579)
    end
  end

  describe '.solve_part_two' do
    it 'finds the solution' do
      expect(described_class.solve_part_two(input)).to be(241_861_950)
    end
  end
end
