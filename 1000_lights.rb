def lights_on(total)
  light_toggle = []
  placer = 0
  loop do
    light_toggle[placer] = 1
    placer = placer + 1
    break if placer == total
  end
  counter1 = 2
  counter2 = 0
  while counter1 < total 
    loop do
      light_toggle[counter2] += 1 if (counter2 + 1)%counter1 == 0
      break if counter2 == light_toggle.size - 1
      counter2 = counter2 + 1
      p light_toggle
    end
    counter2 = 0
    counter1 += 1
  end
  light_toggle
end

lights_on(5)

# we will let 0 represent that the light is off, and 1 represent that the light is on

# we have initialized a hash with each light being on.

# now, we must iterate through this hash
  # if hash_key.index is divisible by the divisor, then toggle. if not, don't toggle.
  # then augment the divisor by 1 (keep doing this until we have reached total)
# then return the number of 1s in the array.


#   counter = 2
#   loop do
#     light_toggle.each_with_index do |switch, index|
#       if index%counter == 0
#         light_toggle[switch] += 1
#         p light_toggle
#       end
#     end
#     counter += 1
#     break if counter = total + 1
#   end
#   light_toggle
# end
# #
# lights_on(5)
