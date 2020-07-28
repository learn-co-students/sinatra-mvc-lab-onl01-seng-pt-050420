class PigLatinizer 

    def initialize
        @converted = []
    end
 
    def piglatinize(text)
        @converted.clear
        words = text.split(" ")
        if words.length == 1
            convert(words[0])
        else
            words.each do |w|
                convert(w)
            end
        end
        @converted.join(" ")
    end

    def convert(w)    
        if w[0] =~ /[AaEeIiOoUu]/
            @converted << "#{w}way"
        else
            convert = w.split(/([aeiou].*)/)
            @converted << "#{convert[1]}#{convert[0]}ay"
        end 
    end
end