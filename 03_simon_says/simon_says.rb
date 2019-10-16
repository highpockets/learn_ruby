#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num = 2)
    if num == 2
        word + ' ' + word
    elsif num > 2
        repeat_word = word + ' '
        full_output = repeat_word * num
        full_output.delete_suffix(' ')
    end
end

def start_of_word(word, num)
    word[0,num]
end

def first_word(phrase)
    phrase.split(' ')[0]
end

def titleize(phrase)
    words = phrase.split(' ')

    words.length.times do |i|
        words[i] = words[i].capitalize
        if(i > 0)
            if(words[i] == 'And' || words[i] == 'Over' || words[i] == 'The')
                words[i] = words[i].downcase
            end
        end
        words[i] = words[i] + ' '
    end
    phrase = words.join
    phrase = phrase.strip
end