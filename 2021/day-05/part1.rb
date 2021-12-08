input = File.read("input")

map = []

input.split("\n").map { |line| line.split(" -> ") }.map do |coord1, coord2|
  x1, y1 = coord1.split(",").map(&:to_i)
  x2, y2 = coord2.split(",").map(&:to_i)

  next unless x1 == x2 || y1 == y2

  src_x = [x1, x2].min
  dest_x = [x1, x2].max
  src_y = [y1, y2].min
  dest_y = [y1, y2].max
  
  (src_x..dest_x).each do |x|
    (src_y..dest_y).each do |y|
      row = map[y] ||= [] 
      row[x] ||= 0
      row[x] += 1
    end
  end
end

result = map.reduce(0) { |sum, row| (row || []).reduce(sum) { |sum, pos| pos.to_i >= 2 ? sum + 1 : sum } }
puts "result: #{result}"
