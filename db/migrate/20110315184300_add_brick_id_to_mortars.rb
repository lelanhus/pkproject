class AddBrickIdToMortars < ActiveRecord::Migration
  def self.up
    add_column :mortars, :brick_id, :integer
  end

  def self.down
    remove_column :mortars, :brick_id
  end
end
