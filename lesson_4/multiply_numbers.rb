def multiply(my_numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == my_numbers.size
    current_number = my_numbers[counter]
    multiplied_number = current_number * multiplier
    multiplied_numbers << multiplied_number

    counter += 1
  end

  multiplied_numbers
end
