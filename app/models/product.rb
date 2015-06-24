class Product < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }
  validates :name, :presence => true
end
