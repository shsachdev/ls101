# Given an integer n, find the maximal number you can obtain by deleting exactly
# one digit of the given number.


def delete_digit(n)
  nums = []
  array = n.digits.reverse
  array.each_with_index do |int, index|
    copy = array.clone
    copy.delete_at(index)
    nums << copy.join.to_i
  end
  nums.max
end


# input = integer, output = integer

# constraints: 10 < n

puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1


# Algorithm

# 1. Get the input integer into an array of numbers.
# 2. Iterate through the array, and at each iteration, create number from the remaining numbers. Add that number
  # to another array called nums.
# 3. Return the largest number from nums
