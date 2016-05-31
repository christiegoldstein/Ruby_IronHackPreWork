def solve_cipher(input , shift)
    
    #initialize
    single_input = input.chars #splits message into array of single characters
    final_message = ""
    
    #iteration
    single_input.each do |char|
        
        if(char == " ")
            final_message = final_message + " "
        else
            char_number = char.ord          #get number value of character
        
            if(char_number <= 97)            #wrap from a to z
                new_number = 123 + shift
            else
                new_number = char_number + shift
            end
        
            final_message = final_message + new_number.chr
        end
        
    end
    
    return final_message
    
end

puts solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)