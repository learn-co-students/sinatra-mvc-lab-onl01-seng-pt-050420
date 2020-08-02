class PigLatinizer

  def piglatinize(user_phrase)
  	a = user_phrase.split(" ")
  	words = a.map {|word| piglatinize_word(word)}
    pig_lat = words.join(" ")
    pig_lat

  end

  def piglatinize_word(words)
  	vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  	first_letter = words[0]
    if vowels.include?(first_letter)
  		new_word_vowel = "#{words}way"
  	else
  	begins_with_consonant(words)
  	end
  end

  def begins_with_consonant(words)
  	vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = []

    i = 0
    while i < words.length

	     if (vowels.include? (words[i])) == false
		     consonants << words[i]
		  elsif (vowels.include? (words[i])) == true
        break

	     end
       i += 1
     end
     first = words[consonants.length..-1]
     second = consonants.join
     third = "ay"

     new_word = "#{ first + second + "ay"}"

    end
end
