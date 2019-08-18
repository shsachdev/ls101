arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

def sub_order(array)
  array.sort {|a,b| b <=> a}
end


def order(array)
  array.map do |sub_arr|
    sub_order(sub_arr)
  end
end

p order(arr)
