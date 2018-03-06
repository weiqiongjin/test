class Product
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :image_url, type: String
  field :price, type: Float
  #验证
  validates :title,:description,:image_url,:presence => true#非空 验证
  validates :price,:numericality =>{:greater_than_or_equal_to => 0.01}#有效数据
  validates :title,:uniqueness => true#标题唯一
  validates :image_url,:format=>{
  	:with =>%r{\.(gif|jpg|png)$}i,
  	:message=>'图片格式有误'
  }
end
