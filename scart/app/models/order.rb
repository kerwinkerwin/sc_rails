class Order < ActiveRecord::Base
  belongs_to :user
  has_many :purchases
  has_many :products, :through => :purchases
end
