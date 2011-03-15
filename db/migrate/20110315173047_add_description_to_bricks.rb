class AddDescriptionToBricks < ActiveRecord::Migration
  def self.up
    add_column :bricks, :descriptions, :text
  end

  def self.down
    remove_column :bricks, :descriptions
  end
end
