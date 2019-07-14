# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

nums = (1..99)

nums.each do |num|
  if num.odd?
    puts num
  end
end
