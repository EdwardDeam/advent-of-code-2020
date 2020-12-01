require 'set'

module Match
  def self.find_pair(list)
    seen = Set.new
    list.each do |number|
      pair = Match.opposite number
      return [number, pair] if seen.include? pair

      seen.add number
    end
    nil
  end

  # rubocop:disable Metrics/MethodLength
  def self.find_trio(list)
    list.sort!
    list.each_with_index do |number, index|
      left = index + 1
      right = list.length - 1
      while left < right
        sum = number + list[left] + list[right]
        return [number, list[left], list[right]] if sum == 2020

        if sum < 2020
          left += 1
        else
          right -= 1
        end
      end
    end
    nil
  end
  # rubocop:enable Metrics/MethodLength

  def self.opposite(int)
    2020 - int
  end
end
