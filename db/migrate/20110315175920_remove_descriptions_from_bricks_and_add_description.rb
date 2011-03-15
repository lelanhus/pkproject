class RemoveDescriptionsFromBricksAndAddDescription < ActiveRecord::Migration
  def self.up
    remove_column :bricks, :descriptions
    add_column :bricks, :description, :text
  end

  def self.down
    remove_column :bricks, :description
    add_column :bricks, :descriptions, :text
  end
end
