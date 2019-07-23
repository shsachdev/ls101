DIGITS = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4",
            5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9"}


def integer_to_string(number)
  result_array = []
  if number == 0
    result_array = [0]
  else
    while number > 0
      result_array.unshift(number%10)
      number /= 10
    end
  end
  store = result_array.map do |digit|
    DIGITS[digit]
  end
  store.join("")
end



# pseudocode

# convert number to array populated with each digit from number.
# use map method and turn each digit into corresponding string using hash
# output all those strings joined together (in the outputted array) using join method.
