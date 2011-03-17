class Brick < ActiveRecord::Base
  has_many :mortars
  
  has_many :categorizations
  has_many :categories, :through => :categorizations
end
