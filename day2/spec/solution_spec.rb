require 'solution'

RSpec.describe Solution do
  let(:input) do
    [
      '1-3 a: abcde',
      '1-3 b: cdefg',
      '2-9 c: ccccccccc'
    ]
  end

  describe '.solve_part_one' do
    it 'returns the solution' do
      expect(described_class.solve_part_one(input)).to be(2)
    end
  end

  describe '.solve_part_two' do
    it 'returns the solution' do
      expect(described_class.solve_part_two(input)).to be(1)
    end
  end
end
