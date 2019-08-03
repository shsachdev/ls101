def repeater(string)
  doubled_array = string.chars.map do |char|
    char * 2
  end
  doubled_array.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# input = string, output = new string
