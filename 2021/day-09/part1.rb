input = File.read("input")

result = 0

rows = input.split("\n")
cols_count = rows.first.size
rows.each_with_index do |row, row_num|
  (0..cols_count - 1).each do |col_num|
    height = row[col_num].to_i
    locations = []
    locations << row[col_num - 1] if col_num > 0
    locations << row[col_num + 1]
    locations << rows[row_num - 1][col_num] if row_num > 0
    locations << rows[row_num + 1][col_num] if row_num < (rows.count-1)
    result += (1 + height) if locations.compact.all? { |n| n.to_i > height }
  end
end

puts "result: #{result}"
