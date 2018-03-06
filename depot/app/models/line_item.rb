class LineItem
	#在线商品
	#讲产品放到购物车
	#解释LineItem属于product和cart
  include Mongoid::Document
  field :product_id, type: String
  field :cart_id, type: String
  field :quantity, type:Integer,:default=>1 #添加个数
  belongs_to :product#数据行依赖于表products
  belongs_to :cart#数据行依赖于表cart
  def total_price
  	product.price * quantity
  end
end
