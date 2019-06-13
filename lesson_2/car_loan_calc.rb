def number?(num)
  num.to_f.to_s == num
end

puts "What is your loan amount?"
loan_amount = gets().chomp()

puts "What is the annual percentage rate?"
apr = gets().chomp()

puts "What is the duration of the loan in months?"
loan_duration = gets().chomp()

m = nil
p == loan_amount
j = nil
n == loan_duration

m = p * (j / (1 - (1 + j)**(-n)))
