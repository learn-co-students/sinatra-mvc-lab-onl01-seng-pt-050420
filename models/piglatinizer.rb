class PigLatinizer
  
  def piglatinize(input)
    input.split(' ').map do |word|
      translate_word(word)
    end.join(' ')
  end 
  
  def vowels(vowel)
    vowel.match(/[aAeEiIoOuU]/)
  end 
  
  def translate_word(word)
    if vowels(word[0])
      "#{word}way"
    else
      v_index = word.index(/[aAeEiIoOuU]/)
      cons = word.slice(0..v_index-1)
      sliced_word = word.slice(v_index..word.length)
      sliced_word + cons + "ay"
    end 
  end 
  
end