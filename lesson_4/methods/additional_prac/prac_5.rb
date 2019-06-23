flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def find_word(words)
  index = 0
  counter = 0
  find_list = []
  loop do
    break if counter == words.size
    current_word = words[counter]
    find_list << current_word if current_word.match("Be")
    counter += 1
  end
  if find_list == nil
    puts "No names start with Be"
  else
    first_word = find_list[0]
    index = words.index(first_word)
  end
  puts index
end

find_word(flintstones)

#better solution:

# flintstones.index {|name| name[0, 2] == "Be"}
