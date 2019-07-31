ALPHABET = ("a".."z").to_a

def staggered_case(str)
  staggered_array = []
  index = 0
  str.chars.each do |char|
    if ALPHABET.include?(char.downcase)
      if index.even?
        staggered_array << char.capitalize
        index += 1
      else
        staggered_array << char.downcase
        index += 1
      end
    else
      staggered_array << char
    end
  end
  p staggered_array.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
