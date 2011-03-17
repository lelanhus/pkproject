class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :bricks, :through => :categorizations
end
