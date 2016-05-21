

1.upto(100) do |i|
    if(i % 3 == 0)
        puts "Fizz"
    end
    
    if(i % 5 == 0)
        puts "Buzz"
    end
    
    if(i % 3 != 0 && i % 5 != 0)
        puts i
    end
end