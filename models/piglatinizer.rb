require 'pry'
class PigLatinizer 

    def piglatinize_generator(word)
        
        if vowel?(word[0])
            word + "way"
          else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
          end
        end
        
        def vowel?(char)
          char.match(/[aAeEiIoOuU]/)
        end

    def piglatinize(input)
      input.split(" ").map{ |word| piglatinize_generator(word)}.join(" ")
    end

end 