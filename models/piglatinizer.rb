class PigLatinizer

    def piglatinize(word)
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
        word = word.split
        word.map do |word|
          if vowels.include?(word[0])
            word + "way"
          else
            i = 0
            consonants = ""
            until vowels.include?(word[i])
              consonants += word[i]
              i += 1
            end
            word.slice(i..-1) + consonants + "ay"
          end
        end.join(" ")
      end


end