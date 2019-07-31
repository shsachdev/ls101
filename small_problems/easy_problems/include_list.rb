def include?(array, value)
  equal_values = []
  array.each do |elem|
    equal_values << elem if elem == value
  end
  if equal_values.size > 0
    return true
  else
    return false
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
