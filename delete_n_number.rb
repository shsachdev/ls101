# Given a list lst and a number N, create a new list that contains each number of lst at most N times without
# reordering. 

# if length of array is less than n, return array.

# Assume N > 0

# input = array and an int, output = array

# Algorithm

# 1/ If N is greater than the lenght of our array, return the array
# 2/ Initiliaze hash called number_counter
# 3/ Initialize new array called new_arr
# 4/ Iterate through array.
  # At each iteration, do 2 things. 
    # First, add the number as a key to the hash and make its value 1. If key already exits, increment value.
    # If value is <= N, append number to new_arr
# 5/ Return new_arr



def delete_nth(arr, n)
  if n > arr.length
    return arr
  end

  number_counter = {}
  new_arr = []

  arr.each do |value|
    if number_counter[value]
      number_counter[value] += 1
    else 
      number_counter[value] = 1
    end
    
    if number_counter[value] <= n 
      new_arr << value 
    end
  end

  return new_arr
end

# Examples

p delete_nth([1,1,1,1], 2) == [1,1]

p delete_nth([], 2) == []

p delete_nth([1], 2) == [1]

p delete_nth([1,2], 3) == [1,2]

p delete_nth([20,37,20,21], 1) == [20,37,21]



