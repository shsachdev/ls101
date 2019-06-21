fruits = ["apple", "banana", "pear"]

transformed_elements = []

counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + "s" # transformation criteria

  counter += 1

  break if counter == fruits.size
end

transformed_elements # => ["apples", "bananas", "pears"]


# When performing transformation, it's always
# important to pay attention to whether the original
# collection was mutated or if a new collection was returned.
