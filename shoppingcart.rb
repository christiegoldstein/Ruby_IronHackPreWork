class ShoppingCart
    def initialize
        @items = []
    end
end

class Item
    attr_reader :name
    attr_reader :price
    
    def initialize(name, price)
        @name = name
        @price = price
    end
    
    def price
        return @price
    end
end

class Houseware < Item
    def price
        if(@price >100)
            return @price - (@price *0.05)
        else
            return @price
        end
    end
end

class Fruit < Item
    def price
        
        today = Time.now
        
        if(today.saturday? || today.sunday?)
            return @price - (@price *0.10)
        else
            return @price
        end
        
    end
end

chair = Houseware.new("chair", 110)
puts chair.price