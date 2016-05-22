number = 1

while number <= 100
    if(number < 10)
        number_start = number
    elsif(number < 100)
        number_start = number / 10
    else
        number_start = number / 100
    end
    
    if(number % 3 == 0 && number % 5 == 0 && number_start == 1)
        puts "FizzBuzzBang"
    
    elsif(number % 3 == 0 && number % 5 == 0)
        puts "FizzBuzz"
    
    elsif(number % 3 == 0 && number_start == 1)
        puts "FizzBang"
    
    elsif(number % 5 == 0 && number_start == 1)
        puts "BuzzBang"
    
    elsif(number % 3 == 0)
        puts "Fizz"
    
    elsif(number % 5 == 0)
        puts "Buzz"

    elsif(number_start == 1)
        puts "Bang"
    
    else
        puts number
    end
    number =number + 1
end