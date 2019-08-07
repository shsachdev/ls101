def find_short(str)
  array_of_words = str.split(" ")
  word_sizes = array_of_words.map do |word|
    word.size
  end
  word_sizes.min
end


# input = str, output = number

# first, turn str of words into array of words.
