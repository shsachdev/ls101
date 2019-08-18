# Find all substrings of a given string.

def first_substring(str)
  substrings_first = []
  str.each_char.with_index do |char, index|
    substrings_first << str[0..index]
  end
  substrings_first
end

def all_substrings(str)
  substrings_all = []
  loop do
    break if str == ""
    substrings_all << first_substring(str)
    str[0] = ""
  end
  substrings_all.flatten
end

p all_substrings("hello")
