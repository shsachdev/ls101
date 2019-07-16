puts "Please write word or multiple words: "
sentence = gets.chomp.to_s
char_length = sentence.split("").size
puts "There are #{char_length} characters in '#{sentence}'"
