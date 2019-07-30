vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(array)
  hash = {}
  array.each do |string|
    if hash.keys.include?(string)
      hash[string] += 1
    else
      hash[string] = 1
    end
  end
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

# array full of strings, some of which occur more than once
# iterate through array, adding each string to a new hash as keys; values are set to 1 unless the value is already a part
# of the hash, in which case, simply add 1 to the value.
# once you have finished iterating through the array, print out all elements of the hash.

# next time, you could also just invoke the count method, which gives you number of times
# a particular element occurs.


count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
