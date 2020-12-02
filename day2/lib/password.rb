class Password
  def initialize(input)
    parse_input(input)
  end

  def count_valid?
    count = @password.chars.count @letter
    count.between? @min, @max
  end

  def position_valid?
    letter_at_position?(@min - 1) ^ letter_at_position?(@max - 1)
  end

  private

  def letter_at_position?(position)
    @password[position] == @letter
  end

  def parse_input(input)
    input = input.split
    @min, @max = input.first.split('-').map(&:to_i)
    @letter = input[1].chr
    @password = input.last
  end
end
