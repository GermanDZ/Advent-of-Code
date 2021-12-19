input = File.read("input")

result = 0

def get_basin(rows, row_num, col_num, already_in_basin)
  return [] if already_in_basin.include? [row_num, col_num]
  cols_count = rows.first.size
  rows_count = rows.size
  in_basin = already_in_basin + [[row_num, col_num]]
  if col_num > 0 && rows[row_num][col_num - 1] != "9"
    in_basin += get_basin(rows, row_num, col_num - 1, in_basin)
    in_basin << [row_num, col_num - 1]
  end
  if col_num < (cols_count-1) && rows[row_num][col_num + 1] != "9"
    in_basin += get_basin(rows, row_num, col_num + 1, in_basin)
    in_basin << [row_num, col_num + 1]
  end
  if row_num > 0 && rows[row_num - 1][col_num] != "9"
    in_basin += get_basin(rows, row_num - 1, col_num, in_basin)
    in_basin << [row_num - 1, col_num]
  end
  if row_num < (rows_count - 1) && rows[row_num + 1][col_num] != "9"
    in_basin += get_basin(rows, row_num + 1, col_num, in_basin)
    in_basin << [row_num + 1, col_num]
  end
  in_basin.uniq
end

rows = input.split("\n")
cols_count = rows.first.size
basin_sizes = []
rows.each_with_index do |row, row_num|
  (0..cols_count - 1).each do |col_num|
    height = row[col_num].to_i
    locations = []
    locations << row[col_num - 1] if col_num > 0
    locations << row[col_num + 1]
    locations << rows[row_num - 1][col_num] if row_num > 0
    locations << rows[row_num + 1][col_num] if row_num < (rows.count-1)
    if locations.compact.all? { |n| n.to_i > height }
      basin_sizes << get_basin(rows, row_num, col_num, []).size
    end
  end
end

result = basin_sizes.sort[-3..-1].reduce(&:*)

puts "result: #{result}"
