class CashRegister
  attr_accessor :total
  attr_reader :discount
  @item_array = []
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = nil)
    transaction = [title, price, quantity]
    
    if quantity != nil
      @item_hash.nil? ? @item_hash = [title] * quantity : @item_list += [title] * quantity
      @total += @price * quantity.to_f
    else
      @item_list.nil? ? @item_list = [title] : @item_list << [title]
      @total += @price
    end
  end
  
  def apply_discount
    if @discount != nil
      @total -= (@discount * 10)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item_list
  end
  
  def void_last_transaction
    

end
  
  