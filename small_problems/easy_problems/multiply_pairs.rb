def multiply_all_pairs(array1, array2)
  pairs_product = []
  product = 1
  array1.each do |num|
    array2.each do |int|
      product = num * int
      pairs_product << product
    end
  end
  p pairs_product.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# input = 2 arrays, output = new_array
# iterate through the array, multiplying each element with each element in array2.
# everytime you get a product, append it to a newly_defined product_array.
# return this product array.
