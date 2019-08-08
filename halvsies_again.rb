def halvsies(arr)
  combined_array = []
  if arr.size.odd?
    combined_array << arr.slice(0..(arr.size / 2))
    combined_array << arr.slice(((arr.size / 2) + 1)..arr.size)
  else
    combined_array << arr.slice(0..(arr.size / 2)-1)
    combined_array << arr.slice((arr.size / 2)..arr.size)
  end
  p combined_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]



# input = one array, output = two arrays
# pseudocode
# initialize a new array, called it combined_array.
# if arr.size is even, then invoke the slice method twice in the following manner (and simultaneously add to combined_array )
  # combined_array << arr.slice(0..(arr.size / 2))
  # combined_array << arr.slice(((arr.size / 2) + 1)..arr.size)
# if arr.size is even, then make a slight modification to above.
  # combined_array << arr.slice(0..(arr.size / 2))
  # combined_array << arr.slice(((arr.size / 2) + 1)..arr.size)
