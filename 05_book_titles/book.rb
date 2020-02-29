class Book
    attr_accessor :title

    def title=(new_title)
        phrase = new_title
        if phrase.include?(' ')
            split_phrase = phrase.split(' ')
            
            split_phrase.each do |word|
                if word == split_phrase[0]
                word.capitalize!
                elsif word == "a" || word == "an" || word == "and" || word == "the" || word == "in" || word == "of"
                    next
                else
                    word.capitalize!
                end
            end
            @title = split_phrase.join(" ")
        else
        @title = phrase.capitalize
        end
    end


end
