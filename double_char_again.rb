def repeater(string)
  arr = string.chars
  doubled = arr.map do |char|
    char * 2
  end
  p doubled.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
