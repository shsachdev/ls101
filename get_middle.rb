def get_middle(str)
  if str.chars.size.odd?
    return str.chars[str.chars.size / 2]
  else
    return str.chars[(str.chars.size / 2) - 1] + str.chars[(str.chars.size / 2)]
  end
end


# input = str, output = str
