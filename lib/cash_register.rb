class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize (discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    @items << title
    @old_total = @total
    @total = @total + (price*quantity)
  end
  
  def apply_discount
    @total = @total*(1-(discount/100))
    @discount == 0 ? "There is no discount to apply" : "Your discount has been applied."
  end
  
  def void_last_transaction
    @total = @old_total
  end
  
end