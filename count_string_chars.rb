# The main idea is to count all the occuring characters(UTF-8) in string. if you have
# string like this aba then the result should be {'a': 2, 'b': 1 }

# If string empty, then the result should be empty hash.

def count_chars(s)
  if s == ""
    return {}
  end
  hash = {}
  s.each_char do |char|
    hash[char] = s.count(char)
  end
  hash
end

puts count_chars("aba") == {"a" => 2, "b" => 1}
puts count_chars("") == {}

# input = string, output = hash

# iterate through string, each char add to hash as key, value is count of that char.
