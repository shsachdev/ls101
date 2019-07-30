
DICTIONARY = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven+", "twelve", "thirteen", "fourteen",
              "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]


def alphabetic_number_sort(array)
  word_array = []
  array.each do |num|
    word_array << DICTIONARY[num]
  end
  word_array.sort.map do |word|
    DICTIONARY.index(word)
  end
end


# input = array, output = array
# turn the numbers into their equivalent words
  # you could have a hash with each number as a key and their corresponding word as a value. But is there a faster way to do this?
    # Instead of hash, we could use an array.
# then order those words using the sort method.




p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
