array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

array.map do |hash|
  incremented_hash = {}
  hash.each do |k,v|
    incremented_hash[k] = v + 1
  end
  incremented_hash
end
