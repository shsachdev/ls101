puts "Please write word or multiple words: "
sentence = gets.chomp.to_s
char_length = sentence.delete(" ").size
puts "There are #{char_length} characters in '#{sentence}'"
