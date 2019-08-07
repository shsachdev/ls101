def sort_array(arr)
  odds = arr.select {|num| num.odd?}
  arr.map do |elem|
    if elem.odd?
      odds.unshift
    else
      elem
    end
  end
end


p sort_array([1,7,2,4,9,3])
