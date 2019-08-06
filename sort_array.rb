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
