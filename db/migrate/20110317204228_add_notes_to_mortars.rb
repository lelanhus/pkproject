class AddNotesToMortars < ActiveRecord::Migration
  def self.up
    add_column :mortars, :notes, :text
  end

  def self.down
    remove_column :mortars, :notes
  end
end
