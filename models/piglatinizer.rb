class PigLatinizer
    attr_accessor :user_phrase
    BLENDS = ['nth','sch','scr',
            'shr','spl','spr','squ','str','thr',
            'bl','br','ch','ck','cl','cr',
            'dr','fl','fr','gh','gl','gr','ng',
            'ph','pl','pr','qu','sc','sh','sk',
            'sl','sm','sn','sp','st','sw','th',
            'tr','tw','wh','wr']

    def piglatinize(words)
        words.split(" ").collect do |word|
            if word.match(/\b[aeiouAEIOU]\b?/)
                word + "way"
            elsif BLENDS.detect{|blend| blend == word[0..2].downcase || blend == word[0..1].downcase}
                blend = BLENDS.detect{|blend| blend == word[0..2].downcase || blend == word[0..1].downcase}
                word[blend.size,word.size-1] + word[0,blend.size] + "ay"
            else
                word[1,word.size-1] + word[0] + "ay"
            end
        end.join(" ")
    end

end