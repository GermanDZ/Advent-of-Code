input = File.read("input")

known_digits_by_size = {
  1 => 2,
  4 => 4,
  7 => 3,
  8 => 7
}

numbers_by_segments = {
  "abcefg" => 0,
  "cf" => 1,
  "acdeg" => 2,
  "acdfg" => 3,
  "bcdf" => 4,
  "abdfg" => 5,
  "abdefg" => 6,
  "acf" => 7,
  "abcdefg" => 8,
  "abcdfg" => 9
}

result = 0
eqs = {}

input.split("\n").each do |line|
  signals, digits = line.split("|").map { |codes| codes.split(" ").map(&:strip) }

  in_1 = signals.select { |c| c.size == known_digits_by_size[1] }.first
  in_4 = signals.select { |c| c.size == known_digits_by_size[4] }.first
  in_7 = signals.select { |c| c.size == known_digits_by_size[7] }.first
  eq_a = (in_7.chars - in_1.chars).first
  eqs[eq_a] = "a"
  in_2_3_5 = signals.select { |c| c.size == 5 }
  in_3 = in_2_3_5.find { |c| (c.chars & in_7.chars).size == in_7.size }
  eq_g = (in_3.chars - in_7.chars - in_4.chars).first
  eqs[eq_g] = "g"
  eq_d = (in_3.chars - in_7.chars - [eq_g]).first
  eqs[eq_d] = "d"
  in_2 = in_2_3_5.find { |c| (c.chars - in_3.chars - in_4.chars).size == 1 }
  eq_e = (in_2.chars - in_3.chars).first
  eqs[eq_e] = "e"
  in_5 = (in_2_3_5 - [in_3, in_2]).first
  eq_b = (in_5.chars - in_3.chars).first
  eqs[eq_b] = "b"
  eq_c = (in_3.chars - in_5.chars).first
  eqs[eq_c] = "c"
  in_0_6_9 = signals.select { |c| c.size == 6 }
  in_0 = in_0_6_9.find { |c| !c.chars.include?(eq_d) }
  eq_e = (in_0.chars - in_3.chars - [eq_b]).first
  eqs[eq_e] = "e"
  eq_f = (in_7.chars - [eq_a, eq_c]).first
  eqs[eq_f] = "f"

  digits.each_with_index do |digit, i|
    tr = digit.chars.map { |c| eqs[c] }.sort.join
    result += numbers_by_segments[tr] * 10**(3-i)
  end
end

puts "result: #{result}"
