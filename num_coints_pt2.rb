def unique_combinations(array) # => returns all different combinations of coin values.
  array.permutation.to_a
end

# unique_combinations([25, 10, 1]) => [[25,10,1], [10,25,1], [10,1,25], [25,1,10],[1,10,25], [1,25,10]]

def calculator(array, total)
  sum = 0
  array.each do |num|
    sum += total / num
    total = total - ((total / num)*num)
  end
  sum
end

def num_coins(cents)
  coin_values = [25,10,1]
  diff_coin_values = unique_combinations(coin_values)
  num_coins = []
  diff_coin_values.each do |sub_array|
    num_coins << calculator(sub_array, cents)
  end
  num_coins.min
end



# p num_coins(33) == 5
# p num_coins(100) == 4
p num_coins(31) == 4

# 33: 1 quarter (25), 1 nickel (5), 3 pennies (1), [dime 10]

# pseudocode

# input = int, output = int

# Algorithm

# 1. get all the unique ways of structuring coin_values (unique combinations.)
  # define new method called unique_comb.
  # input = arr of elements, output = array of sub_arrays
# 2. iterate through all of them, pick the one that returns the lowest number of coins.
