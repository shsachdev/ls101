count = 1
count_prop = " "

loop do
  if count.odd?
    count_prop = "odd"
  else
    count_prop = "even"
  end
  puts "#{count} is #{count_prop}"
  count += 1
  break if count > 5
end
