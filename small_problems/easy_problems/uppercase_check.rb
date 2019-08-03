ALPHABET = ("a".."z").to_a

def uppercase?(str)
  original_array = str.chars
  new_array = original_array.map do |char|
    if ALPHABET.include?(char.downcase)
      if char.capitalize == char
        char
      else
        "false"
      end
    else
      char
    end
  end
  if new_array.include?("false")
    return false
  else
    return true
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


# input = string, output = boolean
