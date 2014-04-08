def letter_count(str)
  count_hash = {}
  str.delete!(" ")
  str_arr = str.split(//)
  str_arr.each do |char|
    count_hash[char] =  str_arr.count(char)
  end
  count_hash
end
