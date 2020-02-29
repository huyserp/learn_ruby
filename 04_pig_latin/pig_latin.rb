#write your code here
def translate phrase
    newPhrase = ""

    if phrase.include?(" ")
        breakPhrase = phrase.split(" ")

        breakPhrase.each do |word|
            split = word.downcase.split('')
            shift = ""

            split.each do |letter|
                if letter == "q" && split[split.index(letter) + 1] == "u"
                    shift += "qu"
                elsif letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
                    break
                else
                    shift += letter
                end
            end
            pigWord = word.delete(shift) + shift + "ay "
            newPhrase = newPhrase + pigWord
        end

        return newPhrase.chop
    else
        split = phrase.split('')
        shift = ""

        split.each do |letter|
            if letter == "q" && split[split.index(letter) + 1] == "u"
                shift += "qu"
            elsif letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
                break
            else
                shift += letter
            end
        end
        
        pigWord = phrase.delete(shift) + shift + "ay"
        return pigWord
    end
end


# makePigLatin = Proc.new do |word|
#     split = word.downcase.split('')
#     shift = ""

#         split.each do |letter|
#             if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
#                 break
#             else
#                 shift += letter
#             end
#         end
#     end
#     pigWord = word.delete(shift) + shift + "ay "
#     newPhrase = newPhrase + pigWord
# end