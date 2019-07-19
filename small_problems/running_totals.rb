def running_total(array)
  cumulative_array = []
  sum = 0
  array.each do |elem|
    cumulative_array << sum + elem
    sum = sum + elem
  end
  cumulative_array
end

p running_total([2,4,6,8])


# pass in array. find cumulative sum of each element up to that poin
# map each element to its cumulative sum at that point
