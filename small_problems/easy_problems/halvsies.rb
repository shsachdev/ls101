def halvsies(array)
  nested_array = []
  if array.size.even?
    nested_array[0] = array.slice(0..(array.size/2)-1)
    nested_array[1] = array.slice((array.size/2)..-1)
  else
    nested_array[0] = array.slice(0..(array.size/2))
    nested_array[1] = array.slice((array.size/2)+1..-1)
  end
  nested_array
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
