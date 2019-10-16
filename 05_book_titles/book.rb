class Book

    def title
        @title
    end
    def title=(book_title)
        
        words = book_title.split(' ')
        
        words.length.times do |i|
            
            if i == 0
                words[i] = words[i].capitalize + ' '
            elsif words[i] != 'and' && words[i] != 'in' && words[i] != 'the' && words[i] != 'of' && words[i] != 'a' && words[i] != 'an'
                words[i] = words[i].capitalize + ' '
            else
                words[i] = words[i] + ' '
            end
        end
        
        book_title = words.join
        @title = book_title.strip
    end
end
