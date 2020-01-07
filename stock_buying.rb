# Say you have an array for which the ith element is the price of a given stock on day i.
#
# If you were only permitted to complete at most one transaction
# (i.e., buy one and sell one share of the stock), design an algorithm to
# find the maximum profit.
#
# Note that you cannot sell a stock before you buy one.

def max_profit(prices)
  values = []
  idx = prices.size - 1
  loop do
    break if idx == 0
    temp = []
    prices.each_with_index do |num, index|
      temp << num unless index >= idx
    end
    temp.map {|num| prices[idx] - num}
    values << temp.map {|num| prices[idx] - num}
    idx = idx - 1
  end
  if values.flatten.select {|num| num > 0}.size == 0
    return 0
  else
    values.flatten.max
  end
end

puts max_profit([7,1,5,3,6,4]) == 5

puts max_profit([7,6,4,3,1]) == 0

# input = arr, output = integer

# Algorithm

# 1. Starting from the last element, iterate through prices and at each iteration:
  # Find the result of the current number and each number before it subtracted (from current num).
  # Add it to sum array called values.
# 2. return values.max
