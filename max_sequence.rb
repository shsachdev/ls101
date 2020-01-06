# The maximum sum subarray problem consists in finding the max sum of a
# contiguous subsequence in an array or list of integers.

# example:

max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6

# if the sum is made up of all negative numbers, return 0. if all positive, just
# return sum of the whole array.

# empty list is considered to have zero greatest sum.

def max_sequence(arr)
  if arr == [] || arr.select {|int| int > 0}.size == 0
    return 0
  elsif arr.select {|int| int < 0}.size == 0
    return arr.sum
  end

  sums = []

  arr.each_with_index do |num, index|
    arr[]
  end
end

puts max_sequence([]) == 0

puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6

puts max_sequence([11]) == 11

puts max_sequence([-32]) == 0

puts max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# input = array, output = integer

# algorithm:

# 1. Check if the array is either comprised of ALL negatives or ALL positives.
  # if all negatives, then return 0. If all positives, return sum of array.

# 2. Iterate through the array, for each integer, slice through with the starting
  # element being current int, and last element increasing an index of 1 each time.
  # Add the sum of each slice to an array of sums.

# 3. Find max num in each array in the array sums. Return max out of this array.
