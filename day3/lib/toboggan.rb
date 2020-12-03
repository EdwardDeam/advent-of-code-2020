class Toboggan
  attr_reader :total_trees

  def initialize(map, right, down)
    @index = 0
    @map = map
    @total_trees = travel_map(right, down)
  end

  private

  def travel_map(right, down)
    @map.each_with_index.reduce(0) do |count, (line, row)|
      set_index_in_range
      if (row % down).zero?
        count += 1 if tree?(line)
        @index += right
      end
      count
    end
  end

  def set_index_in_range
    @index = @index < @map.length ? @index : @index - @map.length
  end

  def tree?(line)
    line[@index] == '#'
  end
end
