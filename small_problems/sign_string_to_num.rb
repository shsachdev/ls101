DIGITS = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
            "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_sign(str)
  char_array = str.split("")
  store = char_array.map do |char|
    DIGITS[char]
  end
  store.inject {|a,i| a*10 + i}
end


p string_sign('4321') == 4321
p string_sign('-570') == -570
p string_sign('+100') == 100





#   if str_array.include?(num.to_s)
#     integer_output << num
#   end
# end
