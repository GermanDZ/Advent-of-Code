input = File.read("input")

fish = input.split(",").map(&:to_i)

days = 80
(1..days).each do |day|
  last_fish = fish.size - 1
  (0..last_fish).each do |i|
    if fish[i] == 0
      fish[i] = 6
      fish << 8
    else
      fish[i] -= 1
    end
  end
end
puts "result: #{fish.size}"
