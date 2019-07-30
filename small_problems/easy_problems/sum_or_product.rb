puts "Please enter an integer greater than 0"
integer = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.to_s

if operation[0] == "s"
  sum = 0
  (1..integer).each do |num|
    sum += num
  end
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
  product = 0
  (1..integer).each do |num|
    product *= num
  end
  puts "The product of the integers between 1 and #{integer} is #{product}."
end
