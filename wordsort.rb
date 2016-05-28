def sentence_to_array(sentence)
    words = sentence.split(/\W/)
        #\W will spilt any non-word character aka punctuation
    return words.sort{|a,b| a.upcase <=> b.upcase}
        #makes both words uppercase before comparison
end

puts sentence_to_array("Have a nice day.")