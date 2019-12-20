# Given an array, find the integer that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

def find_int(seq)
  arr = seq.select {|num| seq.count(num).odd?}
  arr[0]
end

puts find_int([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
puts find_int([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
puts find_int([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
puts find_int([10]) == 10


# input = array, output = integer
