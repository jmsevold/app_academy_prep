            #main method
#an incoming string will come in, which we will split into an array
# we will interate over each word and pass it to the helper method
# which will translate for us
# we will then join the words in the array into a string
            #helper
# the helper takes a single word
#there will be a hash, with letters as keys and morse equivalent as values
# iterate over the word's characters
   # if hash.has_key?(the character) as a key, replace the character in the word with the 
   # value of the key, which is the morse equivalent

   
def morse_encode(str)
  words = str.split(" ")
  morse_array = words.map do |word|
    morse_encode_word(word)
  end
  morse_array.join("  ")
end




def morse_encode_word(word)
  morse_hash = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..',
   }
  char_array = word.split(//)
  char_morse = char_array.map do |char|
    if morse_hash.has_key?(char)
      char = morse_hash[char]
    end
  end
  char_morse.join(" ")
end
      
  

  



