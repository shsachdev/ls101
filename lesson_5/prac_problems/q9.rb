arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# given this data structure, return a new array of the same structure
# but within the sub arrays being ordered in descending order.

arr.map do |subarray|
  subarray.sort do |a, b|
    b <=> a
  end
end
