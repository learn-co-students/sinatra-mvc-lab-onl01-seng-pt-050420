class PigLatinizer

  def initialize
  end

  def piglatinize(text)
     words = text.split(" ")
     new_sentence = []
     for word in words
         first = word.downcase.index(/[aeiou]/)
         if first > 0
             len = word.length
             new_sentence << word[first .. len - 1] + word[0 .. first - 1] + "ay"
         else
             new_sentence << word + "way"
         end
     end
     new_sentence.join(" ")
  end
end 