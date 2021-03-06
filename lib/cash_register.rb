class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize (discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @old_total = @total
    @total = @total + (price*quantity)
  end
  
  def apply_discount
    @total = (@total*(1-(@discount/100.0))).to_i
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end
  
  def void_last_transaction
    @total = @old_total
  end
  
end