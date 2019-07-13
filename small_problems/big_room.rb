
def feet_converter(length, width) # takes in two values in meters, computes area and returns this value in Square Feet.
  length_feet = length * 10.7639
  width_feet = width * 10.7639
  area = length_feet * width_feet
  return area
end



puts "Enter the length of the room in meters:"
room_length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
room_width = gets.chomp.to_i

puts "The area of the room is #{(room_length * room_width).round(2)} meters (#{feet_converter(room_length, room_width).round(2)} square feet)"
