arr1 = ["a", "b", "c"]

arr2 = arr1.dup

arr2[1].upcase!

arr2 #=> ["a", "B", "c"]
arr1 #=> ["a", "B", "c"]

# The only reason that arr1 is also modified is because the destructive method
# upcase! was called on the object within the array rather than the array itself.
#
