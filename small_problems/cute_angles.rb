def dms(number)
  %(#{number.to_i}° + #{(number%number.to_i) * 60} + #{(number%number.to_i) * 3600} )
end

p dms(30)
p dms(76.73)
p dms(254.6)
p dms(93.034773)
p dms(0)
p dms(360)

# input = number, output = string

# will come back to this exercise once I understand the examples
