def interleave(array1, array2)
  alter_array = []
  first_counter = 0
  second_counter = 0
  loop do
    alter_array << array1[first_counter]
    first_counter += 1
    alter_array << array2[second_counter]
    second_counter += 1
    break if second_counter == array2.size
  end
  alter_array
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
