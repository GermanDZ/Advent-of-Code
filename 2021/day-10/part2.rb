input = File.read("input")

result = 0

points = {
  ")" => 1,
  "]" => 2,
  "}" => 3,
  ">" => 4
}
closing = points.keys
opening = "( [ { <".split

rows = input.split("\n")
scores = []
rows.each do |row|
  opened = []
  incomplete = true
  row.chars.each do |char|
    if closing.include?(char)
      if opening.index(opened.pop) != closing.index(char)
        incomplete = false
        break
      end
    else
      opened << char
    end
  end
  score = 0
  if incomplete
    while last_open = opened.pop
      to_close = closing[opening.index(last_open)]
      score *= 5
      score += points[to_close]
    end
    scores << score
  end
end

result = scores.sort[scores.size/2]

puts "result: #{result}"
