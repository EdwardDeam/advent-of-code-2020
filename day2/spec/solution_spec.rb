require 'solution'

RSpec.describe Solution do
  describe 'solve_part_one' do
    it 'returns the solution' do
      input = [
        '1-3 a: abcde',
        '1-3 b: cdefg',
        '2-9 c: ccccccccc'
      ]
      expect(described_class.solve_part_one(input)).to be(2)
    end
  end
end
