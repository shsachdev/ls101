def lights_on(total)
  light_toggle = []
  counter = 0
  loop do
    light_toggle[counter] = 1
    counter = counter + 1
    break if counter == total
  end
  counter = 2
  loop do
    light_toggle.each_with_index do |switch, index|
      if index%counter
        light_toggle[switch] += 1
        counter += 1
      end
    end
    break if counter = total + 1
  end
  p light_toggle
end

lights_on(5)


# we will let 0 represent that the light is off, and 1 represent that the light is on

# we have initialized a hash with each light being on.

# now, we must iterate through this hash
  # if hash_key.index is divisible by the divisor, then toggle. if not, don't toggle.
  # then augment the divisor by 1 (keep doing this until we have reached total)
# then return the number of 1s in the array.
