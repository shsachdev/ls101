def adder_1(array)
  for i in array
    i += 1
  end
  array
end


array = [77,88,99]
array_2 = adder_1(array)
puts array_2
