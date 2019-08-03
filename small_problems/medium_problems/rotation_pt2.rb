def rotate_rightmost_digits(number, n)
  if n == 1
    return number
  end
  number_array = number.to_s.chars
  deleted_num = number_array.delete_at(-n)
  number_array << deleted_num
  number_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
