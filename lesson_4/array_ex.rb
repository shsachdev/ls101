# increase value of each number in array by 1

array = [88,9,876,1,2,3]

array.each { |x| puts (x + 1)   }

new_array = [1, 2, 3, 4, 5]
counter = 0

loop do
  new_array[counter] += 1
  counter += 1
  break if counter == new_array.size
end

puts new_array
