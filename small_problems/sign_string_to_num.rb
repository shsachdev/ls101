require_relative "string_to_num.rb"




def sign_num(string)
  if string[0] != "-"
    string_to_integer(string)
  else
    -string_to_integer(string[1..-1])
  end
end


p sign_num('-570')
