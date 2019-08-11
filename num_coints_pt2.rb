def num_coins(cents)
  coin_values = [25,10,1]
  num_coins = []
  coin_values.each do |value|
    num_coins << cents / value
    cents = cents - ((cents / value)*value)
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

# 1.
