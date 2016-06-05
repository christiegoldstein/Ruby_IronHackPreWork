class ShoppingCart
    def initialize
        @items = []
    end
    
    def add_item(item)
        @items.push(item)
    end
    
    def checkout
        total_sales = 0  #to initialize
        
        @items.each do |cart_item|
            total_sales = total_sales + cart_item.price()
        end
        
        puts "Your total is $#{total_sales}. Have a nice day!"
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

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum",150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.checkout