require 'password'

RSpec.describe Password do
  describe '#count_valid?' do
    context 'when input is valid' do
      it 'returns true' do
        password = described_class.new '1-3 a: abcde'

        expect(password.count_valid?).to be true
      end
    end

    context 'when input is invalid' do
      it 'returns false' do
        password = described_class.new '1-3 b: cdefg'

        expect(password.count_valid?).to be false
      end
    end
  end

  describe '#position_valid?' do
    context 'when input is valid' do
      it 'returns true' do
        password = described_class.new '1-3 a: abcde'

        expect(password.position_valid?).to be true
      end
    end

    context 'when input is invalid' do
      it 'returns false' do
        password = described_class.new '1-3 b: cdefg'

        expect(password.position_valid?).to be false
      end
    end
  end
end
