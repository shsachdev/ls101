array = ["laboratory","experiment","Pans Labyrinth", "elaborate", "polar bear"]

 # write a program that checks if the sequence of strings "lab" exists
 # in the following strings, and print the string if it does.
#
# for string in array
#   if /lab/.match(string)
#     puts string
#   else
#     nil
#   end
# end

array.each do |string|
  if /lab/.match(string)
    puts string
  end
end
