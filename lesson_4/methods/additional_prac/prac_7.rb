statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which each letter occurs in this string.

array = statement.split('')

def score(some_array)
  hash = Hash.new(0)
  some_array.each{|key| hash[key] += 1}
  hash
end

puts score(array)
