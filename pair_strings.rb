def pair_strings(str)
  arr = str.chars
  pairs = []
  arr.each_with_index do |char, index|
    if arr.size.odd?
      if index == arr.size - 1
        pairs << "#{char}" + "_"
      else
        if index.even?
          pairs << "#{char}" + "#{arr[index + 1]}"
        end
      end
    else
      if index.even?
        pairs << "#{char}" + "#{arr[index + 1]}"
      end
    end
  end
  pairs
end


p pair_strings("abc") == ["ab", "c_"]

p pair_strings("abcdef") == ["ab", "cd", "ef"]

# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the
# missing second character of the final pair with an underscore ('_').

# pseudocode

# input = string, output = array of strings.

# test-case => letter case is not specified.

# Algorithm

# 1. turn string into array.

# 2. invoke map method on array.
  # each iteration => current char + next char. (if index is even)
  # if index is odd, return nil

# 3. if string is odd, return last char with underscore

# 4. store array, and remove the nils, then return the new array.
