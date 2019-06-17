def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word) != true
      return false
    else
      nil
    end
  end
  return true
end


# ruby method to determine if an input string is an IP address representing dot separated numbers.
# e.g. "10.4.5.11"
# is_an_ip_number? determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it
  # take
