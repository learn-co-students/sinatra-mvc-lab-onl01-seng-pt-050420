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
    self.get_words.collect do |word|
      if self.is_vowel?(word[0])
        word << "way"
      else
        word[1..word.length] + word[0] + "ay"
      end
    end.join(" ")
  end
end