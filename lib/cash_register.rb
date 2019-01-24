class CashRegister
  
  attr_accessor :total, :discount
  
  @items = []
  
  def initialize (discount = 0)
    @total = 0.0
    @discount = discount
  end
  
  def add_item (item, price, quantity = 1)
    @items << item
    @new_total = @total + (price*quantity)
  end
  
end