def letter_count(str)
  char_hash = {}
  str.delete!(" ")
  str.each_char do |char|
    char_hash[char] = str.count(char)
  end
  char_hash
end
    
  
  