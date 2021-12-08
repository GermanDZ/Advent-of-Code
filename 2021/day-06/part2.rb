input = File.read("input")

fish = input.split(",").map(&:to_i)

fish_grouped = fish.group_by {|n| n }.map { |n, l| [n, l.size] }.to_h
prev_fish_by_day = (0..8).map { |day| fish_grouped[day] || 0 }
days = 256
(1..days).each do |day|
  fish_by_day = (0..7).map { |day| prev_fish_by_day[day+1] || 0 }
  fish_by_day[8] = prev_fish_by_day[0]
  fish_by_day[6] += prev_fish_by_day[0]
  prev_fish_by_day = fish_by_day
end
puts "result: #{prev_fish_by_day.sum}"
