# Problem

# Given an array of numbers, find the max sum of a contiguous subsequence in an array or list of integers

# Array can have both positive and negative numbers. If array is empty, return zero.

# Explicit requirement: If the list is made up of only negative numbers return 0

# input = array, output = integer

# Algorithm for max_sequence

# 1. If input array is empty or has only negative integers, return 0
# 2. If only positive integers, return sum of input array
# 3. Declare an empty called sums
# 4. Iterate through arr
  # At each iteration (expect for the last index), get the sum of the current element 
  # and each number that comes after it.
  # Define a helper function called get_contig_sum(arr, idx)
  # Append the return value of get_contig_sum to sums
# 5. Flatten sums and return its max value

# Algorithm for get_contig_sum
# input = array, int; output = array

# 1. Declare an empty array called element_contig_sums
# 2. Define variable finishing_index and set it equal to idx + 1
# 3. Define a while loop, set the condition to be finishing_index is less than length of array
  # For each iteration, get the sum of arr(idx..finishing_index), append to sums
  # Increment finishing_index by 1
#4. Retun element_contig_sums



def max_sequence(arr)
  if arr.length == 0 || contains_only_negative_nums?(arr)
    return 0
  end

  if contains_only_positive_nums?(arr)
    return arr.sum
  end

  sums = []

  arr.each_with_index do |number, idx|
    sums << get_contig_sum(arr, idx)
  end

  sums.flatten.max
end

def get_contig_sum(arr, idx)
  element_contig_sums = []
  finishing_index = idx + 1
  while finishing_index < arr.length + 1
    element_contig_sums << arr[idx..finishing_index].sum 
    finishing_index += 1
  end
  element_contig_sums
end

def contains_only_negative_nums?(arr)
  arr.select {|num| num > 0}.length == 0
end   

def contains_only_positive_nums?(arr)
  arr.select {|num| num < 0}.length == 0
end

# Examples


# this will return 6 because of the sequence: [4, -1, 2, 1]
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([]) == 0
p max_sequence([2,3,5]) == 10