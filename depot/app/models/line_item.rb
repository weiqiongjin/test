class LineItem
	#在线商品
	#讲产品放到购物车
	#解释LineItem属于product和cart
  include Mongoid::Document
  field :product_id, type: String
  field :cart_id, type: String
  belongs_to :product#数据行依赖于表products
  belongs_to :cart#数据行依赖于表cart
end
