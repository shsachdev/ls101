def swap(string)
  mutated_array = string.split(" ").map do |elem|
    first = elem[0]
    last = elem[-1]
    elem[0] = last
    elem[-1] = first
    elem
  end
  mutated_array.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# first, input = string. output = string.
# turn string into an array comprised of each word in string. do this using split method. (" ")
# then, transform each element within the array so that first and last letter are swapped.
  # how to swap first and last letter? well, the first letter is just element[0]. and the last letter is just element[-1]
  # so, then store the first letter, store the last letter, and then mutate the element so that they are switched.
# take the output array, join the sentence together, and return the string.
