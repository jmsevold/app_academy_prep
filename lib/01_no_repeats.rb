def no_repeat?(year)
  year_string = year.to_s.split(//)
  year_string == year_string.uniq
end

def no_repeats(year_start, year_end)
  years_array = (year_start..year_end).to_a
  results = years_array.select do |year|
    no_repeat?(year)
  end
  results
end



#no_repeats(1980, 1987)