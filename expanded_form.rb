def converter(integer)
  num_of_zero = integer.digits.size
  divisor = "1"
  if num_of_zero == 1
    divisor = divisor.to_i
  else
    (num_of_zero-1).times do
      divisor << "0"
    end
  end
  divisor.to_i
end

def expanded_form(int) # int = 12
  arr = []
  num = converter(int)
  loop do
    break if int == 0
    arr << (int / num)*num
    int = int - ((int / num)*num)
    break if int == 0
    num = converter(int)
  end
  str = ""
  arr.each_with_index do |num, index|
    if index != (arr.size - 1)
      str << "#{num} + "
    else
      str << "#{num}"
    end
  end
  p str
end


p expanded_form(12) == "10 + 2"
p expanded_form(42) == "40 + 2"
p expanded_form(70304) == "70000 + 300 + 4"

# pseudocode

# input = integer, output = string

# Algorithm

# 1. break the integer up by its places.
  # get the number of digits in int. 2 digits means divisor is 10, 3 digits is 100 etc
  # divide integer by divisor. that's your first element in string.
  # number = number - 1st element.
  # keep doing unti number = 0.

# 2. combine places into string with addition sign and return this string.
