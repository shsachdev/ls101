array = []

puts "Enter the first number"
first_number = gets.chomp.to_i
array << first_number
puts "Enter the second number"
second_number = gets.chomp.to_i
array << second_number
puts "Enter the third number"
third_number = gets.chomp.to_i
array << third_number
puts "Enter the fourth number"
fourth_number = gets.chomp.to_i
array << fourth_number
puts "Enter the fifth number"
fifth_number = gets.chomp.to_i
array << fifth_number
puts "Enter the last number"
last_number = gets.chomp.to_i

if array.include?(last_number)
  puts "The number #{last_number} appears in #{array}."
else
  puts "The number #{last_number} does not appear in #{array}."
end
