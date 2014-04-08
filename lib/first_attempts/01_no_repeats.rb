def no_repeats(year_start, year_end)
  uniq_years = []
  years_array = (year_start..year_end).to_a
  years_array.each do |year|
    if no_repeat?(year)
      uniq_years << year
    end
  end
  uniq_years
end



def no_repeat?(year)
  year_string = year.to_s
  year_array = year_string.split(//)
  if year_array.length == year_array.uniq.length
    true
  else
    false
  end
end

def no_repeats_while(year_start, year_end)
  uniq_years = []
  i = year_start
  while i <= year_end
    if no_repeat?(i)
      uniq_years << i
    end
    i += 1
  end
  uniq_years
end
    
  
