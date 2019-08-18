arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# Given the following data structure, return a new array containing the same sub-arrays
# as the original but ordered logically by only taking into consideration the odd numbers they contain.


p (arr.sort do |sub_arr1, sub_arr2|
  sub_arr1.select {|num| num.odd?} <=> sub_arr2.select {|num| num.odd?}
end)

# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
