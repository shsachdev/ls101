# Given an array of integers, find the minimum sum which is obtained from
# summing each Two integers product.

def min_sum(array)

end

puts min_sum([5,4,2,3]) == 22
puts min_sum([12,6,10,26,3,24]) == 342
puts min_sum([9,2,8,7,5,4,0,6]) == 74


# input = array, output = integer

# Algorithm

# 1. Find each two integer product.
# 2. Then, find the min sum of all those products where each two integer product
  # is of 2 numbers that haven't been utilized before. 
