input = File.read("input")

crabs = input.split(",").map(&:to_i)
max_pos = crabs.max
crabs_grouped = crabs.group_by {|n| n }.map { |n, l| [n, l.size] }.to_h

best_pos = max_pos
fuel = max_pos * max_pos * crabs.size
(1..max_pos).each do |pos|
  tot = crabs_grouped.map do |pos_crab, number|
    (1..(pos_crab - pos).abs).to_a.sum * number
  end.sum
  if tot < fuel
    best_pos = pos
    fuel = tot
  end
end

puts "result: #{fuel}"
