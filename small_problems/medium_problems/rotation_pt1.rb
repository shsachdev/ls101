def rotate_array(array)
  counter = 1
  rotated_array = []
  loop do
    rotated_array << array[counter]
    counter += 1
    break if counter == array.size 
  end
  p rotated_array << array[0]
end

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


# input = array, output = new array
# take the first element of the array, and move it to the last element.
# return this array.
