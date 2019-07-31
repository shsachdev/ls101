def multiply_list(array1, array2)
  product_array = []
  array1.each do |num|
    product = num * array2[array1.index(num)]
    product_array << product
  end
  product_array
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
