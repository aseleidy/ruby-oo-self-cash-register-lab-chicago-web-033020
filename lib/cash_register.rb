require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount, :title, :price, :quantity
  
  @items = []
  
  def initialize(discount=0)
      @total = 0
      @discount = discount
  end
  
  def add_item(title, price, quantity=1)
      self.total += (price*quantity)
      
      quantity.times do 
        @items << title 
      end 
  end 
  
  def apply_discount
    if @discount != 0
      self.total = (self.total * (1 - self.discount.to_f/100.0)).to_i 
      return "After the discount, the total comes to $#{self.total}."
    else 
      self.total
      return "There is no discount to apply."
    end 
  end
  
  def items 
      @items
  end 
  
end
