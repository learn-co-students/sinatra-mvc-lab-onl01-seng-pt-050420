require 'pry'
class PigLatinizer 

    def piglatinize(word)
        
        letters = word.split("")
 
        if vowel(letters[0])
            letters + "way"
          
        else
           until vowel(letters[0]) 
            letters << letters.shift
           end 
           letters  + "ay"
        end 
        letters.join
        end 

    def vowel(letter)
        letter.downcase
        letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"    
    end 
   
end 