flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def shortener(array)
  counter = 0
  new_array = []
  loop do
    break if counter == array.size
    current_word = array[counter]
    current_word = current_word[0,3]
    new_array << current_word
    counter += 1
  end
  puts new_array
end

shortener(flintstones)

# faster way

flintstones.map! do |name|
  name[0,3]
end
