class Password
  def initialize(input)
    parse_input(input)
  end

  def count_valid?
    count = @password.chars.count @letter
    count.between? @min, @max
  end

  private

  def parse_input(input)
    input = input.split
    @min, @max = input.first.split('-').map(&:to_i)
    @letter = input[1].chr
    @password = input.last
  end
end
