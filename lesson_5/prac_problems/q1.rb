arr = ['10', '11', '9', '7', '8']

# order this array of number strings by descending numeric value

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
