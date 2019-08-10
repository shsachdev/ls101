def longest(arr, n)
  str_size = arr.map do |str|
    str.size
  end

end


p longest(['Hello','World','Codewars','Katas'],3) == "World"
p longest(['Hello','World','Codewars','Katas'],4) == "Katas"
p longest(['aa', 'bb', 'cc', 'dd', 'eee', 'b', 'f', 'ff', 'hhh', 'gggg'],4) == "aa"
p longest(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k'],1) == "a"
p longest(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k','l'],1) == "a"

#pseudocode

# input = array and integer. output = string.


# algorithm

# 1. map each string to its string size (by iterating on arr). store this array. call it word_sizes.

# 2. sort word_sizes. find the nth largest size by doing word_sizes[n].store this size.

# 3. now, initialize a new array called size_tracker.

# 4. iterate through arr again using each method.
  # if word.size > size, append this word to size tracker.
  # subtract size_tracker.size from n.

#
