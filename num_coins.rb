def num_coins(cents)
  coin_values = {"quarter": 25, "dime": 10, "nickel": 5, "penny": 1}
  num_coins = []
  coin_values.each do |k,v|
    num_coins << cents / v
    cents = cents - ((cents / v)*v)
  end
  num_coins.sum
end


p num_coins(33) == 5
p num_coins(100) == 4
p num_coins(31) == 3

# 33: 1 quarter (25), 1 nickel (5), 3 pennies (1), [dime 10]

# pseudocode

# input = int, output = int

# Algorithm

# 1. divide cents by coins in descending order.
# 2. when remainder is zero, stop dividing, and return number of times each coin was divisible.
