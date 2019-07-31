def swapcase(str)
  swap_array = str.chars.map do |char|
    if char.upcase == char
      char.downcase
    else
      char.upcase
    end
  end
  swap_array.join
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
