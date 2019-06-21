produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == "fruit"
      select_fruit[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end
