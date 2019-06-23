empty_hash = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_index do |name, index|
  empty_hash[name] = index
end

puts empty_hash
