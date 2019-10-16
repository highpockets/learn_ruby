#write your code here
def translate(phrase)
    
    words = phrase.split(' ')

    words.length.times do |i|

        first_letter = words[i][0,1].to_s
        second_letter = words[i][1,1].to_s
        third_letter = words[i][2,1].to_s
        
        if(first_letter == 'q' && second_letter == 'u')
            new_word = words[i][2..-1].to_s
            words[i] = new_word + first_letter + second_letter + 'ay '

        elsif(first_letter.match(/[aeiou]/))
            words[i] = words[i] + 'ay '
        
        elsif(second_letter == 'q' && third_letter == 'u')
            new_word = words[i][3..-1].to_s
            words[i] = new_word + first_letter + second_letter + third_letter + 'ay '

        elsif(second_letter.match(/[aeiou]/))
            new_word = words[i][1..-1].to_s
            words[i] = new_word + first_letter + 'ay '

        elsif(third_letter.match(/[aeiou]/))
            new_word = words[i][2..-1].to_s
            words[i] = new_word + first_letter + second_letter + 'ay '
        else
            new_word = words[i][3..-1].to_s
            words[i] = new_word + first_letter + second_letter + third_letter + 'ay '
        end
    end
    phrase = words.join
    phrase.strip
end
