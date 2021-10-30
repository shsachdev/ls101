# Digital root is the recursive sum of all the digits in a number

# Given a number n, take the sum of the digits n. If that value has more than one digit, continue reducing
# in this way until a single digit number is produced. The input will be a non-negative integer.

# Examples
# if n is a single digit number, return n

# input = int, output = integer

# Algorithm

# 1. If n is a single digit number, return n
# 2. While n has more than one digit, keep summing its digits.
  # Define helper function get_sum that given an integer, returns its sum
  # Create while loop with condition that i should not be single digit
  # during each iteration, re-assign i to return value of get_sum

def digital_root(n)
  digits = n.to_s.chars.length

  while digits > 1
    n = get_sum(n)
    digits = n.to_s.chars.length
  end
  return n 
end

def get_sum(number)
  return number.to_s.chars.map { |value| value.to_i }.sum
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2

