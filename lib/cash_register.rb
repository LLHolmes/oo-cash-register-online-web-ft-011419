class CashRegister
  
  attr_accessor :total, :discount, :items
  attr_reader :items
  
  @items = []
  @old_total = 0.0
  
  def initialize (discount = 0)
    @total = 0.0
    @discount = discount
  end
  
  def add_item (item, price, quantity = 1)
    @items << item
    @old_total = @total
    @total = @total + (price*quantity)
  end
  
  def apply_discount
    @total = @total*(1-(discount/100))
    @discount == 0 ? "baby" : "not a baby"
    # == 0 ? puts "There is no discount to apply" : puts "Your discount has been applied."
  end
  
  def void_last_transaction
    @total = @old_total
  end
  
end