[1, 2, 3].any? do |num|
  puts num # => returns nil
  num.odd?
end


# => block's return value is true (determine by return value of the last expression in block)

# => any? method return value is true (determined by block's return value)
