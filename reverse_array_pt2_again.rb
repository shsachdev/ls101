def reverse(list)
  counter = list.size - 1
  reverse_array = []
  loop do
    break if counter < 0
    reverse_array << list[counter]
    counter -= 1
  end
  reverse_array
end


reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']
p reverse([])           # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true



# input = array, output = some other array_of_words

# pseudocode


# first, initialize a counter variable that is set to list.size - 1
# initialize a new array called reverse_array. this will hold the elements in reverse order.
# start a loop, and iterate in list starting from the last element. break if the counter == -1.
  # add each element to reverse_array.
# return reverse_array.
