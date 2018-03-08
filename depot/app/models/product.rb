class Product
	# 商品-aaa----ppp
  include Mongoid::Document
  # default_scope :order => 'title'#默认以title排序
  has_many :line_items#关联多个line_item
  #避免删除正在被在线商品引用的产品
  before_destroy :ensure_mot_referenced_by_any_line_item
  field :title, type: String #标题
  field :description, type: String#描述
  field :image_url, type: String
  field :price, type: Float
  #验证
  validates :title,:description,:image_url,:presence => true#非空 验证
  validates :price,:numericality =>{:greater_than_or_equal_to => 0.01}#有效数据
  validates :title,:uniqueness => true#标题唯一
  validates :image_url,:format=>{#正则验证图片格式
  	:with =>%r{\.(gif|jpg|png)$}i,
  	:message=>'图片格式有误'
  }
  private
   def ensure_mot_referenced_by_any_line_item
   	if line_items.empty?
   		return true
   	else
   		errors.add(:base,'line Items pressent')
   		return false
   	end
   end

end
