def sort_string(str1, str2)

end

p sort_string('foos', 'of') == "oofs"
p sort_string('string', 'gnirts') == "gnirts"
p sort_string('banana', 'abn') == "aaabnn"

# here is a solution:

# def sort_string(str, ordering)
#   str.chars.sort_by { |item| ordering.index(item) || ordering.size }.join
# end

# Define a method that accepts 2 strings as parameters.
# The method returns the first string sorted by the second.

# To elaborate, the second string defines the ordering. It is possible that in
# the second string characters repeat, so you should remove repeating characters, leaving only the first occurrence.

# Any character in the first string that does not appear in the second string should
# be sorted to the end of the result in original order.


# pseudocode

# input = 2 strings. output = 1 string.

# Algorithm

# 1.
