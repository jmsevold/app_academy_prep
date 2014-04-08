def ordered_vowel_words(str)
  words_array = str.split(" ")
  ordered_array = words_array.select do |word|
    ordered_vowel_word?(word)
  end
  ordered_array.join(" ")
end



def ordered_vowel_word?(word)
  alphabet = ('a'..'z').to_a
    vowels = %w{ a e i o u}
    consonants = alphabet - vowels
    word_array = word.split(//)
    no_cons = word_array - consonants
    if no_cons == no_cons.sort
      true
    else
      false
    end
end



 