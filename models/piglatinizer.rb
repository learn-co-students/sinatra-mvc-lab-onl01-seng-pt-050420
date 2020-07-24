class PigLatinizer 

  def piglatinize(str)
    split_str_array = str.split(" ")
    piglatinized = split_str_array.map do |word|
      piglatinize_word(word)
    end
    piglatinized.join(" ")
  end

  def piglatinize_word(word)
    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      consonants = []
      consonants.push(word[0])
      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants.push(word[1])
        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          consonants.push(word[2])
        end
      end
      "#{word[consonants.length..-1]}" + "#{consonants.join}" + "ay"
    end
  end

end