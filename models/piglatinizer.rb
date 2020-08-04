class PigLatinizer

    def piglatinize(string)
        words = string.split.map {|w| translate(w) }
        words.join(' ')
    end

    def translate(word)
        if word.start_with?(/^[aieouAIEOU].*/) 
            "#{word}way"
        else
            vowel_count = word.index(/[aeiou]/)
            split = word.slice(0..vowel_count-1)
            ending = word.slice(vowel_count..word.length)
            ending + split + "ay"
        end
    end
end