hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# Given this data structure write some code to return an array containing the colors of the fruits
# and the sizes of the vegetables. The sizes should be uppercase and the colors
# should be capitalized.

array = []

hsh.each do |key, value|
  if value[:type] == "fruit"
    new_value = value[:colors].map do |elem|
      elem.capitalize
    end
    array << new_value
  elsif value[:type] == "vegetable"
    array << value[:size].upcase
  end
end

p array
