def merge(arr1, arr2)
  non_duplicate_array = []
  arr1.each do |elem|
    non_duplicate_array << elem
  end
  arr2.each do |elem|
    non_duplicate_array << elem
  end
  non_duplicate_array.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]



# input = two array, output = 1 array


# pseudocode

# initialize a array and call it non_duplicate_array
# then, iterate through each passed in array one by one and add each element to non_duplicate_array.
# finally, invoke the uniq method on non_duplicate_array
