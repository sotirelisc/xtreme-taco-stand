# Get days
n = gets.chomp.to_i
# Find maximum possible tacos for each day
n.times do
  # Get supplies in format of: s m r b
  row = gets.chomp
  s, *data = row.split(" ")
  s = s.to_i
  data.map! do |o|
    o.to_i
  end
  max = data.max
  min = data.min
  # Find median
  med = data.select do |i|
    i <= max and i >= min
  end
  med = med[0]
  # Secret taco algorithm
  t = min
  max = max - min
  tmp = max
  if med < max
    tmp = med
  end
  tacos = t + tmp
  if s <= tacos
    tacos = s
  end
  puts tacos
end