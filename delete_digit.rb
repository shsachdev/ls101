# Given an integer num, find the maximal number you can obtain by deleting exactly
# one digit of the given number.

# p delete_digit(152) == 52
#
# p delete_digit(1001) == 101

def get_two_digits(arr)
  first_index = 0
  element_combinations = []
  loop do
    break if first_index == arr.size - 1
    loop do
      second_index = first_index + 1
      element_combinations << arr[first_index].to_s + arr[second_index].to_s
      second_index = second_index + 1
      break if second_index == arr.size
    end
    p "hello"
    first_index = first_index + 1
  end
  p element_combinations
end

get_two_digits([1,2,3])

# def delete_digit(num)
#   digits_num = num.digits.reverse
#   array = get_two_digits(digits_num)
# end


# pseudocode

# input = integer, output = integer

# test-cases: nothing unusual

# Algorithm

# 1. store the digits of num in an array called digits_num

# 2. then find a way to get all 2 element combinations of that array.
  # [1,5,2] => [[1,5], [1,2], [5,2]]
  # create 2 loops. one keeping track of first index, one keep track of second index.

# 3. then invoke a method one each of those 2 element arrays that returns the 2 integers formed from each array, and appends it
# to a new array called two_digit_nums.

# 4. pick the highest integer in two_digit_nums.
