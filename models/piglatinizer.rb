class PigLatinizer

    def piglatinize(words)
        split_sentence = words.split(" ")
    split_sentence.collect do |word|
        piglatinize_word(word)
    end.join(" ")
    
   end


   def piglatinize_word(word)
    vowels = ["a","e","i", "o", "u", "A","E", "O","I", "U"]
         
        if vowels.include?(word[0]) || word.length < 2
            "#{word}way"
        else
             consonants =[] 
             consonants << word[0]

             if !vowels.include?(word[1])
                consonants << word[1]

             if !vowels.include?(word[2])
             consonants << word[2]
             end       
         end
         "#{word[consonants.length..-1]}" + consonants.join + "ay"
        end      

   end
end