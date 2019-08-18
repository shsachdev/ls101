arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

def multiple_3(num)
  if num%3 == 0
    true
  else
    false
  end
end


p (arr.map do |sub_array|
  sub_array.select do |num|
    multiple_3(num)
  end
end)
