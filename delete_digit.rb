# Given an integer num, find the maximal number you can obtain by deleting exactly
# one digit of the given number.

def all_combs(arr)
  combinations = arr.permutation.to_a.map do |sub_arr|
    sub_arr.join.to_i
  end
  combinations.max
end

def delete_digit(num)
  array = num.digits.reverse
  index = 0
  comb_max = []
  loop do
    store = []
    array.each do |num|
      store << num
    end
    store.delete_at(index)
    comb_max << all_combs(store)
    index = index + 1
    break if index == array.size
  end
  comb_max.max
end

p delete_digit(152) == 52

p delete_digit(1001) == 101

# all_combs method

# Given an array of numbers, find all combinations within that array.


# pseudocode

# input = integer, output = integer

# test-cases: nothing unusual

# Algorithm

# 1. Delete each digit once from the number.
  # a. Turn digit into array.
  # b.
  # c.
# 2. Find all combinations of remaining number.
# 3. Pick max one, call comb_max.
# 4. Do this for every "remaining_number" once each digit has been deleted.
# 5. Pick the highest out of all the comb_maxes.
