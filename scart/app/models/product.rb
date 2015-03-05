class Product < ActiveRecord::Base
  validates :name, :presence =>true
  validates :name, :uniqueness => true
  has_many :purchases
  has_many :orders, :through =>:purchases




  def formatted_price
    "$#{price.to_s}"
  end

  def discounted_price(discount)
    price*(1-(discount/100.0))
  end

end
