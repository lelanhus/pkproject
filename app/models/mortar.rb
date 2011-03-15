class Mortar < ActiveRecord::Base
  belongs_to :brick
  belongs_to :species
  belongs_to :gender
  belongs_to :state
end
