class Cart
	#购物车
  include Mongoid::Document
  #一个购物车关联多个在线商品line_items
  has_many :line_items,:dependent => :destroy#在线商品的存在依赖于购物车是否存在
end
