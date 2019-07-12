# write a method that takes one argument, a string, and returns a new string with the words in reverse order.


def reverse_sentence(str)
  str_array = str.split("")
  new_array = []
  str_array.each do |char|
    new_array << str_array.pop
  end
  new_str = new_array.join("")
  new_str
end



# pseudo code
# reverse_sentence method takes in a string as an argument
# it converts the string to an array (original_array) full of its characters using the split method
# then it appends each character from that array to another array (new_array), starting from last to first.
# finally, it converts new_array to a string using the join method.
# it returns the string






puts reverse_sentence("shikhar")






# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
