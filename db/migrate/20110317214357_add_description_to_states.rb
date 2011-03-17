class AddDescriptionToStates < ActiveRecord::Migration
  def self.up
    add_column :states, :description, :text
  end

  def self.down
    remove_column :states, :description
  end
end
