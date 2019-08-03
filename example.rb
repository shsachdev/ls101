# write a method that takes a string, and return the string in reverse order.

def reverse_str(string)
  reversed_string = ""
  counter = string.size - 1
  loop do
    reversed_string << string[counter]
    counter = counter - 1
    break if counter == -1
  end
  reversed_string
end

p reverse_str("hello")
p reverse_str("hi shikhar")

# input = string, output = string
