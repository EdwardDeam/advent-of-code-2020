module InputUtil
  def self.read_to_i
    File.read('input.txt').split("\n").map(&:to_i)
  end
end
