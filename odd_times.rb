def odd_times(arr)
  hash = {}
  arr.each do |num|
    if hash.key?(num)
      hash[num] += 1
    else
      hash[num] = 1
    end
  end
  hash.select {|k,v| k if v.odd?}.to_a[0][0]
end




# find the integer in array that occurs an odd number of times.

p odd_times([3,6,9,3,3,10,10,9,6]) == 3
p odd_times([7,8,9,9,10,10,8]) == 7


# pseudocode

# input = array, output = integer.

# Algorithm:

# 1. initialize a hash.
# 2. iterate through array, and count each time num appears. store this value as value.
# 3. return key that has a value that is odd.
