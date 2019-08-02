require_relative "leading_substrings.rb"

def substrings(string)
  master_array = []
  loop do
    master_array << substrings_at_start(string)
    string[0] = ""
    break if string.size == 0
  end
  p master_array.map do |sub_array|
    puts "hello"
  end
end

p substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', 'bcde', 'c', 'cd', 'cde', 'd', 'de', 'e']

# input = string, output = array
# invoke leading_substrings on each sub_string in the original string.
  # for ex, if string is "hello" --> you want to first invoke on "hello", then "ello", "llo", then "lo", then "o"
  # each time you invoke the method, you want to append those sub_array to a master_array
  # finally, you return that master_array and invoke the join method upon it, so that output is an array of strings (rather than array of sub_strings.)
