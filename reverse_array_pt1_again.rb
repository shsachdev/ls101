def reverse!(list)
  if list == []
    return list
  end
  holder = []
  loop do
    holder << list.pop
    break if list == []
  end
  loop do
    list << holder.shift
    break if holder == []
  end
  p list
end


list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

# Write a method that takes an Array as an argument, and
# reverses its elements in place; that is, mutate the Array
# passed into this method. The return value should be the same Array object.



# pseudocode

# input = array, output = same array
