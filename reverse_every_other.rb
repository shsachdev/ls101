def reverse_alternate(string)
  arr_of_words = string.split(" ")
  reversed_arr = arr_of_words.map do |word|
    if arr_of_words.index(word).odd?
      word.reverse
    else
      word
    end
  end
  reversed_arr.join(" ")
end



p reverse_alternate("Did it work?") == "Did ti work?"

p reverse_alternate("I really hope it works this time...") == "I yllaer hope ti works siht time..."

p reverse_alternate("Reverse this string, please!") == "Reverse siht string, !esaelp"

p reverse_alternate("Have a beer") == "Have a beer"


# pseudo-code

# input = string, output = string

# Algorithm

# 1. turn string into array.
# 2. iterate through array (which is full of words). (using map method)
# 3. if the word's index in the array is odd, you want to reverse it.
# 4. capture return array and turn into string. return this string.
