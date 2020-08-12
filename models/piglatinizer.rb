class PigLatinizer

    def piglatinize(user_phrase)
        @user_phrase = user_phrase
        string = @user_phrase
        words = string.split(" ")
        phrase = words.collect  {|word| piglatinize_word(word)}
        phrase.join(" ")
    end
    
    def piglatinize_word(word)
        first_letter = word[0].downcase
    
        if ["a", "e", "i", "o", "u"].include?(first_letter)
          # piglatinize word that starts with a vowel
          "#{word}way"
        else
          consonants = []
          consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
              consonants << word[1]
              if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                consonants << word[2]
              end
            end
          # piglatinize word that starts with a consonant
          "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end    
    end
end