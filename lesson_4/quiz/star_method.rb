def star_method(stars)
  for star in stars
    star.downcase
  end
  puts stars
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
star_method(stars_1)


# stars_2 = star_method(stars_1)
