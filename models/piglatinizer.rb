class PigLatinizer
  attr_reader :text
  @@vowels = ["a", "e", "i", "o", "u"]
  
  def get_words(text)
    #@arr = get_words(@text.to_s)
    text.split(" ")
  end

  def is_vowel?(letter)
    @@vowels.include?(letter.downcase)
  end
  
  def piglatinize(text)
    new_words = []
    words_array = self.get_words(text)
    words_array.each do |word|
      if self.is_vowel?(word[0])
        new_words << "#{word}way"
      else
        word.split("").each.with_index do |c, index|
          if self.is_vowel?(c)
            new_words << "#{word[index..word.length-1]}#{word[0..index-1]}ay"
            break
          end
        end
      end
    end
    new_words.join(" ")
  end
  #   self.get_words.each do |word|
  #     if self.is_vowel?(word[0])
  #       new_words << word + "way"
  #     else
  #       new_words << "#{word[1..word.length-1]}#{word[0]}ay"
  #     end
  #   end
  #   new_words.join(" ")
end