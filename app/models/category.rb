class Category < ActiveRecord::Base
  has_many :foods, :dependent => :destroy
  has_many :things, :dependent => :destroy
end
