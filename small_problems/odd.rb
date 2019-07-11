def is_odd?(num)
  if num.abs%2 != 0
    true
  else
    false
  end
end

# note: this is a overly lengthy solution. see solution on LS to
# write this up more elegantly.


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
