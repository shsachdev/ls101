def substrings_at_start(str)
  sliced_array = []
  str.chars.each_with_index do |char, index|
    sliced_array << str.chars[0..index]
  end
  sliced_array.map do |sub_array|
    sub_array.join
  end
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
