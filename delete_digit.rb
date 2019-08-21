# Given an integer num, find the maximal number you can obtain by deleting exactly
# one digit of the given number.

def array_arrangements(arr)
  multiple_holder = []
  first_index = 0
  loop do
    temp_holder = []
    arr.each_with_index do |num, index|
      temp_holder << num unless index == first_index
    end
    multiple_holder << temp_holder.permutation.to_a
    break if first_index = arr.size + 1
    first_index = first_index + 1
  end
  p multiple_holder
end

array_arrangements([1, 5, 2])

# def delete_digit(num)
#   digits_num = num.digits.reverse
#   two_digit_nums = []
#   get_two_digits(digits_num).each do |str|
#     two_digit_nums << str.to_i && two_digit_nums << str.reverse.to_i
#   end
#   two_digit_nums.max
# end
#
# p delete_digit(152) == 52
#
# p delete_digit(1001) == 101


# pseudocode

# input = integer, output = integer

# test-cases: nothing unusual

# Algorithm

# 1. store the digits of num in an array called digits_num. assume the array has n elements.

# 2. find a way to get all sub_arrays with n-1 element arrangements.


# 3. then invoke a method one each of those 2 element arrays that returns the 2 integers formed from each array, and appends it
# to a new array called two_digit_nums.

# 4. pick the highest integer in two_digit_nums.
