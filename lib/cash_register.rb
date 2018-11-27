class CashRegister

  attr_accessor :total, :discount, :allitems



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @allitems = []
  end

  def add_item(item,price,qty = 1)
    @total += (price * qty)
    x=0
    while  x >= qty
      @allitems.push(item)
      x += 1
    end
  end

  def apply_discount
    if (discount != 0)
      @total = @total * (100-@discount) / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @allitems
  end


end
