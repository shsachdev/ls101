# You are given an array containing integers. The array is either entirely comprised
# of odd integers or entirely comprised of even integers except for a single integer N.
# Write a method that takes the array as an argument and returns this "outlier" N.

def find_outlier(integers)
  odds = []
  evens = []
  integers.each do |int|
    odds << int if int.odd?
    evens << int if int.even?
  end
  return odds[0] if odds.size == 1
  evens[0]
end

puts find_outlier([0,1,2]) == 1
puts find_outlier([1,2,3]) == 2
puts find_outlier([2,6,8,10,3]) == 3


# input = array, output = integer


# Algorithm

# 1. Iterate through integers, add evens to arr Even. Odds to arr Odd.
# 2. Return the first element of the array which has a size of 1.
