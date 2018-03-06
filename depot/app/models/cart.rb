class Cart
	#购物车
  include Mongoid::Document
  #一个购物车关联多个在线商品line_items
  has_many :line_items,:dependent => :destroy#在线商品的存在依赖于购物车是否存在
  def add_product(product_id)
  	begin
  		current_item=LineItem.find_by product_id: product_id
  	rescue Exception => e
  		current_item=nil
  	end
  	
  	if current_item
  		current_item.quantity += 1
  	else
  		current_item=line_items.build(:product_id=> product_id)
  	end
  	current_item
  end
  def total_price
  	line_items.to_a.sum{|item| item.total_price}
  end
end
