def sum_consecutives(array)
  sum = 0
  
end

# You are given a array which contains only integers (positive and negative).
# Your job is to sum only the numbers that are the same and consecutive.
# The result should be one array.

p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) == [-10,14,12,0]


# pseudocode

# input = array, output = array

# Algorithm

# 1. iterate through array

# 2. start summing until consecutive numbers are not the same.

# 3. store sum in some array.

# 4. return this array.
