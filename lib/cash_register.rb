
require 'pry'
class CashRegister

  attr_accessor :total, :discount, :last_transaction
  ITEMS = []

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
      @total += (price * quantity)
      quantity.times {@items << title}
      @last_transaction = price * quantity
  end

  def apply_discount
    if discount
      sale = @discount/100.to_f * total
      self.total = self.total - sale.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end
  #binding.pry

end
