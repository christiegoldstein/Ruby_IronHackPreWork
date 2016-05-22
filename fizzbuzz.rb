number = 1

while number <= 100
    result = ""
    
    if(number < 10)
        number_start = number
    elsif(number < 100)
        number_start = number / 10
    else
        number_start = number / 100
    end
    
    
    if(number % 3 == 0)
        result = result + "Fizz"
    end
    
    if(number % 5 == 0)
        result = result + "Buzz"
    end
    
    if(number_start == 1)
        result = result + "Bang"
    end
    
    if(result == "")
        puts number
    else
        puts result
    end
    number =number + 1
end