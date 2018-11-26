class CashRegister

  attr_accessor :total, :discount, :items



  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item,price,qty = 1)
    @total += (price * qty)
    @items << item
  end

  def apply_discount
    if (discount != 0)
      @total = @total * (100-@discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def self.items
    @items
  end
end
