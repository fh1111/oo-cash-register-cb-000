class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item,price,qty = 1)
    @total += (price * qty)
  end

  def apply_discount
    @total = @total * (100-@discount) / 100
    return "After the discount, the total comes to $#{@total}."
  end
end
