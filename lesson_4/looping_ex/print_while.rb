numbers = []
i = 0

while numbers.size < 5
  numbers << rand(0..99)
  puts numbers[i]
  i = i + 1
end
