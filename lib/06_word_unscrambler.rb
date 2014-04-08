#str will be placed in an array
#words will be split into an array of words
# the str will be split into an array of chars
#each word in words will be split into an array of words
#sort the str array and every word
# compare using ==, and if true, return the original, unsorted
# word(s) from words into an array
#consider a hash: the key is word, the value is the array of the sorted letters
    #compare the str-letter array to each value, and if equal, return the key
    
#alrernatively, consider an empty array with each index being an array
#of the split words

#rake spec spec/06_word_unscrambler_spec.rb

def word_unscrambler(str, words)
  str_chars = str.split(//)
  char_words = words.map do |word|
    word.split(//)
  end
  matches = char_words.select do |word|
    word.sort == str_chars.sort
  end
  results = matches.map do |match|
    match.join
  end
  results
end





