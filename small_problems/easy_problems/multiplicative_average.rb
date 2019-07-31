def show_multiplicative_average(array)
  product = 1
  array.each do |integer|
    product = product * integer
  end
  average = product / array.size
  puts format("%.3f", average)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
