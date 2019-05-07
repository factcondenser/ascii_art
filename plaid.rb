result = []
ARGF.lines.each do |line|
  x, y, val = line.split(',')
  x = x[1..-1].to_i
  y = y.to_i
  val = val.gsub(/]\n/, '').to_i
  result[y] ||= []
  result[y][x] = val.chr
end

result.each do |row|
  if row == nil
    puts
    next
  end

  row.each do |col|
    if col == nil
      print ' '
    else
      print col
    end
  end
  puts
end
