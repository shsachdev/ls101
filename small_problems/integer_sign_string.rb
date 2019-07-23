require_relative "number_to_string.rb"

def signed_integer_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else          integer_to_string(number)
  end
end

p signed_integer_string(4321) == '+4321'
p signed_integer_string(-123) == '-123'
p signed_integer_string(0) == '0'
