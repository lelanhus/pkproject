class AddValueDataToMortars < ActiveRecord::Migration
  def self.up
    add_column :mortars, :min, :float
    add_column :mortars, :stdev, :float
  end

  def self.down
    remove_column :mortars, :min
    remove_column :mortars, :stdev
  end
end
