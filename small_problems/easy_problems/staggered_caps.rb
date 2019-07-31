def staggered_case(str)
  staggered_array = []
  str.chars.each_with_index do |char, index|
    if index.even?
      staggered_array << char.capitalize
    else
      if char.capitalize == char
        staggered_array << char.downcase
      else
        staggered_array << char
      end
    end
  end
  staggered_array.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
