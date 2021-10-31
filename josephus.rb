# Problem

# Given an array and a element k, return an array that contains every kth element removed from the original
# array in order it was removed.

# Assumption: K will always be greater than 1
# Empty array you can return empty array
# New array

# input = array and an integer, output = array

# Algorithm

# 1. Initialize an empty array and call it removed_elems
# 2. Check if array is empty and return removed_elems if it is
# 3. Create while loop with condition until array is empty
  # Starting index is equal to k
  # Until you've gone past the last element in the array,

def josephus(arr, k)
  removed_elements = []
  while arr.length > 0 do
    arr = arr.rotate(k)
    removed_elements << arr.pop
  end
  removed_elements
end


# Examples

josephus([1,2,3,4,5,6,7,8,9,10], 1) == [1,2,3,4,5,6,7,8,9,10]

josephus([1,2,3,4,5,6,7,8,9,10], 2) == [2,4,6,8,10,3,7,1,9,5]

josephus(["C", "o", "d", "e", "w", "a", "r", "r", "s"], 4) == ["e", "s", "W", "o", "C", "d", "r", "a"]

josephus([1,2,3,4,5,6,7], 3) == [3,6,2,7,5,1,4]

josephus([], 3) == []

# [1,2,3,4,5,6,7] - initial sequence
# [1,2,4,5,6,7] => 3 is counted out and goes into the result [3]
# [1,2,4,5,7] => 6 is counted out and goes into the result [3,6]
# [1,4,5,7] => 2 is counted out and goes into the result [3,6,2]
# [1,4,5] => 7 is counted out and goes into the result [3,6,2,7]
# [1,4] => 5 is counted out and goes into the result [3,6,2,7,5]
# [4] => 1 is counted out and goes into the result [3,6,2,7,5,1]
# [] => 4 is counted out and goes into the result [3,6,2,7,5,1,4]


