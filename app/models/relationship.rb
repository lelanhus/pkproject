class Relationship < ActiveRecord::Base
  
  belongs_to :source, :class_name => "Brick"
  belongs_to :target, :class_name => "Brick"
    
  def self.by_target(target)
    where("relationships.target_id = ?", target)
  end
end
