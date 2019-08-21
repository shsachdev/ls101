# Given an integer num, find the maximal number you can obtain by deleting exactly
# one digit of the given number.


def get_two_digits(arr)
  first_index = 0
  element_combinations = []
  loop do
    break if first_index == arr.size - 1
    second_index = first_index + 1
    loop do
      element_combinations << arr[first_index].to_s + arr[second_index].to_s
      second_index = second_index + 1
      break if second_index == arr.size
    end
    first_index = first_index + 1
  end
  p element_combinations
end


def delete_digit(num)
  digits_num = num.digits.reverse
  two_digit_nums = []
  get_two_digits(digits_num).each do |str|
    two_digit_nums << str.to_i && two_digit_nums << str.reverse.to_i
  end
  two_digit_nums.max
end

p delete_digit(152) == 52

p delete_digit(1001) == 101


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
