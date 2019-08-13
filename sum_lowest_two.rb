def sum_two_smallest_numbers(array)
  min1 = array.min
  new_arr = array.reject {|i| i == min1}
  min2 = new_arr.min
  sum = min1 + min2
end

p sum_two_smallest_numbers([5, 8, 12, 18, 22]) == 13
p sum_two_smallest_numbers([7, 15, 12, 18, 22]) == 19
p sum_two_smallest_numbers([25, 42, 12, 18, 22]) == 30

# Create a function that returns the sum of the two lowest positive numbers given
# an array of minimum 4 positive integers. No floats or non-positive integers will
# be passed.

# pseudocode

# input = array, output = integer

# Algorithm

# 1. find lowest possible integer using min method from array, and remove it.
# 2. then find lowest possible int from new array.
# 3. sum the two and return the sum.
