def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"


# input = string, output = string
# method will return different object 
