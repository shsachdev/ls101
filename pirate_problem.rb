def grabscrab(anagram, array)
  possibilities = []
  array.each do |str|
    if str.size == anagram.size
      if str.chars.sort == anagram.chars.sort
        possibilities << str
      end
    end
  end
  possibilities
end


# Write a function that will accept a jumble of letters as well as a
# array, and output a list of words that the pirate might have meant.

p grabscrab("ortsp",["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]

# pseudocode

# input = string, array. output = array

# capitalization does not matter.

# Algorithm

# 1. compare anagram with each element in array.

# 2. initialize array called possibilities.

# 3. if element && anagram have same length + same chars, then add element to possibilities.
  # to check for length you could invoke size method.
  # to check for chars, you could sort element + anagram and compare.
    # .chars.sort

# 4. return possibilities
