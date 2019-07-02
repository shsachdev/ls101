arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# there's the sub arrays. then there's the elements.
# we are not sorting any of the elements. we are sorting the sub_arrays.

arr.sort_by do |sub_array|
  sub_array.select do |elem|
    elem.odd?
  end
end
