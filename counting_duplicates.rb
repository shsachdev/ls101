def duplicate_count(str)
  duplicates = []
  counter = []
  str.each_char do |char|
    if duplicates.include?(char.downcase)
      counter << char.downcase
    else
      duplicates << char.downcase
    end
  end
  counter.uniq.size
end

p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2


# pseudocode

# input = string, output = integer
# test-cases: case does not matter. (see 3rd ex)

# Algorithm


# 1. initialize empty array called duplicates.

# 2. initialize empty array called counter.

# 2. iterate through string.
  # if char is already in duplicates, add char to counter.
  # if char is not in duplicates, add it to duplicates.

# 3. invoke uniq on counter, and return the size of the array.
