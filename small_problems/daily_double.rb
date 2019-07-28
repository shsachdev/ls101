def crunch(string)
  crunch_array = []
  string.chars.each do |char|
    crunch_array << char unless crunch_array.last == char
  end
  crunch_array.join
end


# input = string, output = new string
# convert string into an array where each element in string is a character of the word.
  # so, for ex, use the chars method here.
# then, iterate through this array using the each method.
  # as you iterate add each char to another array, call it array_already.
  # create another array called crunch_array.
  # if the array_already.last == current element, then do not add the current. else, add.
# return crunch_array.join



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
