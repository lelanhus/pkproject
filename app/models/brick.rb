class Brick < ActiveRecord::Base
  has_many :mortars
  
  has_many :categorizations
  has_many :categories, :through => :categorizations
  
  has_many :relationships, :class_name => "Relationship", :foreign_key => "source_id"
  has_many :targets, :through => :relationships
  
  def sources
    relationships = Relationship.by_target(self.id)
    sources = []
    relationships.each do |relation|
      sources << Brick.find(relation.source_id)
    end
    return sources
  end
  
  def sources_and_targets
    self.sources.zip(self.targets)
  end
  
  def self.search(search)
    if search
      where("bricks.name LIKE ?", "%#{search}")
    else
      scoped
    end
  end
end
