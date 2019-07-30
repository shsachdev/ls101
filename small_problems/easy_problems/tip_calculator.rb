puts "What is the bill?"
bill_amount = gets.chomp.to_i
puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f / 100

puts "The tip is $#{tip_percentage * bill_amount}"
puts "The total is $#{(tip_percentage * bill_amount) + bill_amount}"
