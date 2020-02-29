def echo word
    return word
end

def shout word
    return word.upcase
end

def repeat word, num=2
    phrase = "#{word} " * num
    return phrase.chop
end

def start_of_word word, num=2
    return word[0, num]
end

def first_word phrase
    cut = phrase.rindex(' ')
    return phrase[0, cut]
end

def titleize phrase
    if phrase.include?(' ')
        splitPhrase = phrase.split(' ')

        splitPhrase.each do |word|
            if word == splitPhrase[0]
                word.capitalize!
            elsif word == "a" || word == "and" || word == "over" || word == "the" && word != splitPhrase[0]
                # I don't like that I've hard coded this...
                next
            else
            word.capitalize!
           end
        end

        return splitPhrase.join(' ')

    else
        return phrase.capitalize()
    end


    # if phrase.include?(' ')
    #    cut = phrase.rindex(' ')
    #    firstWord = phrase[0, cut]
    #    secondWord = phrase[cut+1, phrase.length]
    #    return firstWord.capitalize + ' ' + secondWord.capitalize
    # else
    #     return phrase.capitalize
    # end
end