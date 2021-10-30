# Problem

# Given an array of integers, returns all pairs of integers that have a difference of 2. The result array
# should be sorted in ascending order of values.

# Assume there are no duplicate integers in the array. 

# Assume array is not empty.

# Data Structures

# input = one dimensional array, output = 2d array if pairs exist. if pairs do not exist, it's a 1d array.

# Algorithm for twos_differences

# 1. Declare an empty array called pairs.

# 2. Iterate through input array
  # For each number, check if difference between number and any other number in the array is -2.

  # To do the above, I will define a new helper function check_difference. Returns array of compatible numbers.

  # If array is empty, move on to next number.
  # If array is non-empty, iterate through array, and each iteration add an array containing number and element
  # we are iterating on to pairs. 

# 3. Sort each sub_array, then apply uniq method to pairs, and return pairs. 


# Algorith for check_difference

# input = integer and array, output = array

# 1. Declare empty array called compatible_nums

# 2. Iterate through input array
  # At each iteration, if the absolute value of the difference between num and the number is 2
  # append the number to compatible_nums.

# 3. Return compatible_nums

def twos_differences(arr)
  sorted_arr = arr.sort
  pairs = []
  sorted_arr.each do |number|
    if check_difference(number, sorted_arr).length != 0
      check_difference(number, sorted_arr).each do |elem|
        pairs << [number, elem]
      end
    end
  end
  pairs.map {|sub_arr| sub_arr.sort}.uniq
end

def check_difference(num, array)
  compatible_nums = []
  array.each do |element|
    difference = num - element 
    if difference.abs == 2
      compatible_nums << element 
    end
  end
  compatible_nums
end


# Examples / Test Cases

puts twos_differences([1,2,3,4]) == [[1,3], [2,4]]

p twos_differences([4,1,2,3]) == [[1,3], [2,4]]

p twos_differences([1,23,3,4,7]) == [[1,3]]

p twos_differences([4,3,1,5,6]) == [[1,3], [3,5], [4,6]]

p twos_differences([4,7,10]) == []