def reverse!(array)
  if array == []
    return array
  end
  reversed_array = []
  loop do
    reversed_array << array.pop
    break if array.size == 0
  end
  loop do
    array << reversed_array.shift
    break if reversed_array.size == 0
  end
  array
end



list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

# input = array, output = array, but reversed; both arrays are the same object.
# pop elements from array to new_array until array = [].
  # this will have array = [], and new_array will be in reverse order.
# then, call shift on new_array into original array until new_array is empty.
# then, return original array.
