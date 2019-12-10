class PigLatinizer

    def initialize

    end

    def piglatinize(text)
        sent = text.split(' ')
        sent.map {|word| pigword(word)}.join(' ')
    end

    def pigword(word)
        v = first_vowel(word)
        if v == 0
            word + "way"
        elsif word[0] == "y"
            word[0] = ""
            word + "way"
        else
            word[v,word.size-v] + word[0,v] + "ay"
        end
    end

    def first_vowel(word)
        lets = word.split('')
        v = lets.reduce("") {|m, l| m == "" && "aeiouAEIOU".include?(l) ? m = l : m}
        word.index(v)
    end

end