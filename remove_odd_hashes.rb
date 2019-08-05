def remove_odd_hashes(arr, key1, key2)
  new_arr = arr.select do |hash|
    if (hash[key1] + hash[key2]).even?
      hash
    end
  end
  new_arr
end



# To complete this kata remove any hash whose two keys sum to an odd number.



p remove_odd_hashes([ {a: 5, b: 5},{a: 3, b: 4}, {a: 2, b: 0},{a: 2, b: 1}],:a, :b) == [{a: 5, b: 5}, {a: 2, b: 0}]
