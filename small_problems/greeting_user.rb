puts "What is your name?"
name = gets.chomp.to_s

if name.include?("!")
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
