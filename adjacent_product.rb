def adjacent_product(array)
  products = []
  array.each_with_index do |num, index|
    if index == 0
      next
    else
      products << num * array[index - 1]
    end
  end
  products.max
end



p adjacent_product([1, 2, 3]) == 6

p adjacent_product([9, 5, 10, 2, 24, -1, -48]) == 50
