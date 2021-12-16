input = File.read("input")

known_digits_by_size = {
  1 => 2,
  4 => 4,
  7 => 3,
  8 => 7
}

result = 0

input.split("\n").each do |line|
  signals, digits = line.split("|").map { |codes| codes.split(" ").map(&:strip) }

  known = digits.select do |code|
    known_digits_by_size.values.include? code.size
  end

  result += known.count
end

puts "result: #{result}"
