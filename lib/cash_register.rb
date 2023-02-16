class CashRegister
    attr_accessor :total, :discount
    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end



    def add_item (title, price, quantity = 1)
        @title = title
        self.total += price * quantity
        quantity.times { items << title }
        @last_transaction = price * quantity

    end


    def apply_discount
        if discount > 0
            self.total -= total * discount / 100.00
            "After the discount, the total comes to $#{total.to_i}."
        else 
            "There is no discount to apply."
        end
    end
    def items
        @items

    end

    def void_last_transaction
        self.total -= @last_transaction
        
    end
end