def cleaner(str)
  numbers = []
  str.each_char do |char|
    if char == "0"
      numbers << char.to_i
    elsif char.to_i != 0
      numbers << char.to_i
    end
  end
  value = numbers.join.to_i.chr
  array = str.chars
  loop do
    char = array[0]
    if char != "0" && char.to_i != 0
      array.shift
    elsif char == "0"
      array.shift
    else
      break
    end
  end
  array.insert(0, value)
  array.join
end

def decipher_this(string)
  arr = string.split(" ")
  cleaned_words = arr.map do |word|
    cleaner(word)
  end
  more_clean = cleaned_words.map do |word|
    second_letter = word[1]
    word[1] = word[-1]
    word[-1] = second_letter
    word
  end
  p more_clean.join(" ")
end


p decipher_this('72olle 103doo 100ya') == 'Hello good day'
p decipher_this('82yade 115te 103o') == 'Ready set go'


# pseudocode

# Algorithm

# 1. initialize a new string, call it clean.
# 2. add all chars from string to clean, but switch second and last letter, and first letter replaced by char_code.
  # first replace char_code with letter. do this by defining a method.
  # then, switch second and last letter
