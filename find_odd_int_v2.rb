# PEDAC

# Given an array of integers, find the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

# no empty arrays

# Data Structures

# input = array, output = integer

# Algorithm

# 1. If length of array is 1, just return the element in the array.

# 2. Declare an empty hash and call it count_tracker.

# 3. Iterate through our array
  # Check if the number is included in the hash as a key.
  # If not, add it to the hash and set its value to 1.
  # If it is, simply increment its value by 1.

# 4. Iterate through hash
  # If value is odd, return key

def find_int(arr)
  if arr.length == 1
    return arr.first
  end

  count_tracker = {}

  arr.each do |num|
    if count_tracker.keys.include?(num)
      count_tracker[num] += 1
    else 
      count_tracker[num] = 1
    end
  end
  count_tracker.each do |key, value|
    if value % 2 != 0 
      return key 
    end
  end
end


# examples / test-cases

p find_int([1,1,3]) == 3

p find_int([7]) == 7

p find_int([1,1,2]) == 2

p find_int([0,1,0,1,0]) == 0

p find_int([1,2,2,3,3,3,4,3,3,3,2,2,1]) == 4