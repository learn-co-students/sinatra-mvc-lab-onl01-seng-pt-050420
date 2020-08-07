class PigLatinizer
    attr_reader :string

    def piglatinize(string)
        if string.match(/\s/)
            split_string_arr = string.split()
            new_arr = split_string_arr.map do |a|
                if a[0].match(/[aeiouAEIOU]/)
                    vowels(a)
                else
                    translator(a)
                end
            end
            new_arr.join(' ')
        else 
            if string[0].match(/[aeiouAEIOU]/)
                vowels(string)
            else
                translator(string)
            end
        end
    end
    
    def vowels(word)
        "#{word}way"
    end

    def translator(word)
        while !word[0].match(/[aeiouAEIOU]/)
            first_character = word[0]
            word[0] = ''
            word = "#{word}#{first_character}"
        end
        word+="ay"
        word
    end

end