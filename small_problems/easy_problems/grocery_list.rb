def buy_fruit(array)
  fruit_number_array = []
  array.each do |sub_array|
    sub_array[1].times do
      fruit_number_array << sub_array[0]
    end
  end
  fruit_number_array
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
