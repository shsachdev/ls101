require_relative 'config_file'
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  word = case op
    when "1"
      "Adding"
    when "2"
      "Subtracting"
    when "3"
      "Multiplying"
    when "4"
      "Dividing"
    end
  x = "A random line of code"

  word
end
prompt($hash_messages[:welcome])

name = nil

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt($hash_messages[:name_error])
  else
    break
  end
end

prompt("Hi #{name}")
loop do # main loop
  number1 = nil
  loop do
    prompt($hash_messages[:first_number])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt($hash_messages[:number_error])
    end
  end

  number2 = nil
  loop do
    prompt($hash_messages[:second_number])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt($hash_messages[:number_error])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt($hash_messages[:operator_error])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
            when "1"
              number1.to_i + number2.to_i
            when "2"
              number1.to_i - number2.to_i
            when "3"
              number1.to_i * number2.to_i
            when "4"
              number1.to_f / number2.to_f
  end

  prompt("The result is #{result}!")

  prompt($hash_messages[:operation_again])
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt($hash_messages[:thanks])
