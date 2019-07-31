def sum(arr)
  result = 0
  arr.each {|elem| result += elem}
  result
end

def sum_of_sums(array)
  array_of_sums = []
  array.each_with_index do |num, index|
    array_of_sums << sum(array[0..index])
  end
  sum(array_of_sums)
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
