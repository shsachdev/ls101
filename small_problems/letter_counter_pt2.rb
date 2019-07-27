def word_sizes(string)
  word_size = string.split(" ").map do |word|
    word.size
  end
  unique_size = word_size.uniq
  hash = {}
  unique_size.each do |elem|
    hash[elem] = word_size.count(elem)
  end
  hash
end
