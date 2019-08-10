def parity_outlier(arr)
  odds = []
  evens = []
  arr.each do |num|
    if num.odd?
      odds << num
    else
      evens << num
    end
  end
  if odds.size == 1
    odds[0]
  else
    evens[0]
  end
end



p parity_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11

p parity_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160


# The array is either entirely comprised of odd integers or entirely comprised
# of even integers except for a single integer N. Write a method that takes the
# array as an argument and returns this "outlier" N.


# pseudocode

# 1. iterate through the inputted array.

# 2. check if num is odd. add to odd_array. if even, add to even_array.

# 3. return first element of array that has size 1.
