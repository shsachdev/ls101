def crunch(str)
  letters = str.chars
  non_duplicate_letters = []
  letters.each_with_index do |letter, index|
    if letter != letters[index + 1] && (index + 1) != letters.size
      non_duplicate_letters << letter
    elsif index == letters.size - 1
      non_duplicate_letters << letter
    end
  end
  non_duplicate_letters.join
end




p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


# pseudocode

# input = string, output = string

# turn string into an array of elements (letters) where each element is a character. do this by invoking chars method on string.
# I can then initialize a new array, called non_duplicate.
# iterate through letters and if the previous element is equal to the current element, do not add the current element.
  # if it is not equal, append it to non_duplicate.
# finally, return non_duplicate (first turn it into a string by invoking the .join method)
