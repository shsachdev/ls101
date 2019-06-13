def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(num)
  num.to_f.to_s == num
end



prompt("What is your loan amount?")
loan_amount = gets().chomp()
prompt("What is the annual percentage rate? Enter percentage amount.")
apr = gets().chomp()
prompt("What is the duration of the loan in months?")
loan_duration = gets().chomp()

p = loan_amount.to_f
j = apr.to_f / 12
n = loan_duration.to_f

monthly_payment = p * (j / (1 - (1 + j)**(-n)))

puts "Your monthly payment is $#{monthly_payment}"
