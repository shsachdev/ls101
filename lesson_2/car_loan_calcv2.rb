def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to mortgage calculator!")
  prompt("-------------------------------")

  prompt("What is the loan amount?")

  amount = ""
  loop do
    amount = Kernel.gets.chomp

    if amount.empty?() || amount.to_f < 0
      prompt("Amount must be a positive number.")
    else
      break
    end
  end

  prompt("What is the annual percentage rate?")
  apr = ""
  loop do
    prompt("for ex: enter 5% as 5 or 2.5% as 2.5")
    apr = Kernel.gets.chomp
    if amount.empty?() || amount.to_f < 0
      prompt("Amount must be a positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration in years?")
  loan_duration = ""
  loop do
    loan_duration = Kernel.gets.chomp
    if amount.empty?() || amount.to_f < 0
      prompt("Amount must be a positive number.")
    else
      break
    end
  end

  annual_interest_rate = apr.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i() * 12

  monthly_payment = amount.to_f() *
                   (monthly_interest_rate /
                   (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")
  prompt("Another calculation?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for using the mortgage calculator!")
prompt("Goodbye!")
