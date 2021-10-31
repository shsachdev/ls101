# PEDAC

# Problem

# Find the sum of all the natural numbers below an input number that are multiples of 3 or 5. If the number
# is a multiple of both 3 and 5, only count it once.

# input = integer, output = integer

# Assumptions

# if there are no multiples of 3 or 5 below the input number, return 0

# Examples / Test Cases

# Algorithm

# 1. Get all numbers up to n - 1 in an array
# 2. Declare a variable sum and set it equal to 0.
# 3. Iterate through array 
  # If num divisible by 3 and 5, increment sum by the number
  # If num divisible by 3, increment sum by the number
  # If sum divisible by 5, increment by the number
# 4. Return sum


def find_sum_of_multiples(n)
  range_of_numbers = (1..n-1).to_a
  sum = 0
  range_of_numbers.each do |num|,6
    if num % 3 == 0 and num % 5 == 0
      p num 
      sum += num 
    elsif num % 3 == 0
      p num
      sum += num  
    elsif num % 5 == 0
      p num
      sum += num 
    end
  end
  sum
end

# find_sum_of_multiples(10) == 23
# find_sum_of_multiples(3) == 0
find_sum_of_multiples(20) == 62