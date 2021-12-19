input = File.read("input")

result = 0

points = {
  ")" => 3,
  "]" => 57,
  "}" => 1197,
  ">" => 25137
}
closing = points.keys
opening = "( [ { <".split

rows = input.split("\n")
errors = rows.map do |row|
  opened = []
  error = 0
  row.chars.each do |char|
    if closing.include?(char)
      if opening.index(opened.pop) != closing.index(char)
        error = points[char]
        break
      end
    else
      opened << char
    end
  end
  error
end

result = errors.sum

puts "result: #{result}"
