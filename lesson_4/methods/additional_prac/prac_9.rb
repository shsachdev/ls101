def titleize(string)
  split_string = string.split()
  counter = 0
  new_array = []
  loop do
    break if counter == split_string.size
    current_word = split_string[counter]
    current_word[0] = current_word[0].upcase
    new_array << current_word
    counter += 1
  end
  new_string = split_string.join(" ")
  new_string
end


# this could all be done in one line

words.split.map {|word| word.capitalize }.join(' ')
