# keyword	meaning
#START	start of the program
#SET	sets a variable we can use for later
#GET	retrieve input from user
#PRINT	displays output to user
#READ	retrieve value from variable
#IF / ELSE IF / ELSE	show conditional branches in logic
#WHILE	show looping logic
#END	end of the program


def find_greatest(numbers)
  saved_number = nil


  numbers.each do |num|
    saved_number ||= num
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end


saved_number
end

puts find_greatest([1,2,3,4,5])
