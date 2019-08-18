def summer(array)
  total = 0
  array.each do |elem|
    total = total + elem
  end
  total
end

def sum_of_sums(arr)
  sum = 0
  arr.each_with_index do |num, index|
    sum = sum + summer(arr[0..index])
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
