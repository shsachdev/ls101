def maskify(str)
  arr = str.chars
  counter = 0
  if arr.size <= 4
    return str
  end
  loop do
    arr[counter] = "#"
    counter = counter + 1
    break if counter == arr.size - 4
  end
  arr.join
end


# input = string, output = string
# split string into its characters using .chars method. this will return array.
# set counter to -1.
# loop over counter, break when counter = -4. do counter -= 1 each time. for ex: array[-1] = * etc
# return array.join


p maskify('4556364607935616') =='############5616'
p maskify('64607935616') == '#######5616'
p maskify('1') == '1'
p maskify('') == ''
