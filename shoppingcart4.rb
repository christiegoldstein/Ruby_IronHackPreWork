class ShoppingCart
    def initialize
        @items = []
    end
    
    def add_item(item)
        @items.push(item)
    end
    
    def checkout
        total_sales = 0  #to initialize
        list_size = 0    #initializes the int used to count size of array list
        
        @items.each do |cart_item|
            list_size = list_size + 1     #every time loop is entered it will add one, when it stops looping size of list can be determined
            total_sales = total_sales + cart_item.price()
        end
        
        if(list_size >= 5)
            total_sales = total_sales - (total_sales * 0.10)
        else
            total_sales = total_sales
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
        
        if(today.saturday? || today.sunday?) #if it is a weekend
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

joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(anchovies)
joshs_cart.checkout