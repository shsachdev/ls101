ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

array = ages.values

sum = 0

array.each { |e| sum += e  }

puts sum
