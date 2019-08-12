def sum_consecutives(array)
  sums = []
  counter = 0
  j = 0
  loop do
    sum = 0
    loop do
      if array[counter] == array[counter + 1]
        sum = sum + array[counter] + array[counter + 1]
      else
        break
      end
      counter = counter + 1
    end
    j = j + 1
    sums << sum if sum != 0
    sum = 0
    break if j == array.size
  end
  p sums
end

# You are given a array which contains only integers (positive and negative).
# Your job is to sum only the numbers that are the same and consecutive.
# The result should be one array.

p sum_consecutives([1,4,4,4,0,4,3,3,1]) == [1,12,0,4,6,1]
# p sum_consecutives([1,1,7,7,3]) == [2,14,3]
# p sum_consecutives([-5,-5,7,7,12,0]) == [-10,14,12,0]


# pseudocode

# input = array, output = array

# Algorithm

# 1. initialize an array called sums

# 2. invoke loop method.

# 3. initialize counter (that keeps track of index.) and sum.

# 4. if two elements next to each other same, add to sum. break when not same.

# 5. when not same, add sum to duplicates and then reset sum to zero.

# 6. return duplicates
