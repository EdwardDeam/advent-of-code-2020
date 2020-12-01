require 'match'

RSpec.describe Match do
  let(:input) { [1721, 979, 366, 299, 675, 1456] }

  describe '.find_pair' do
    it 'finds the pair that sums 2020' do
      expected_pair = [1721, 299]
      expect(described_class.find_pair(input)).to contain_exactly(*expected_pair)
    end
  end

  describe '.find_trio' do
    it 'finds the trio that sums to 2020' do
      expected_trio = [979, 366, 675]
      expect(described_class.find_trio(input)).to contain_exactly(*expected_trio)
    end
  end
end
