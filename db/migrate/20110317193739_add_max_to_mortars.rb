class AddMaxToMortars < ActiveRecord::Migration
  def self.up
    add_column :mortars, :max, :float
  end

  def self.down
    remove_column :mortars, :max
  end
end
