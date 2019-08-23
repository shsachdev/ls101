# Given an integer num, find the maximal number you can obtain by deleting exactly
# one digit of the given number.



def delete_digit(num)
  array = num.digits.reverse

end

p delete_digit(152) == 52

p delete_digit(1001) == 101


# pseudocode

# input = integer, output = integer

# test-cases: nothing unusual

# Algorithm

# 1. Delete each digit once from the number.
  # a. Turn digit into array.
  # b. Iterate through array using each_with_index method.
  # c. 
# 2. Find all combinations of remaining number.
# 3. Pick max one, call comb_max.
# 4. Do this for every "remaining_number" once each digit has been deleted.
# 5. Pick the highest out of all the comb_maxes.
