class CreateMortars < ActiveRecord::Migration
  def self.up
    create_table :mortars do |t|
      t.integer :species_id
      t.integer :gender_id
      t.integer :state_id
      t.float :mean
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :mortars
  end
end
