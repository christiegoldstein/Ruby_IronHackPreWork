def solve_cipher(input)
    
    #initialize
    single_input = input.chars #splits message into array of single characters
    final_message = ""
    left_shift = -1
    
    #iteration
    single_input.each do |char|
        
        char_number = char.ord          #get number value of character
        
        if(char_number <= 97)            #wrap from a to z
            shift = 123 + left_shift
        else
            shift = char_number + left_shift
        end
        
        final_message = final_message + shift.chr

    end
    
    return final_message
        
end

puts solve_cipher("ifmmp")
