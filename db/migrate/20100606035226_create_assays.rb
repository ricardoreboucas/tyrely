class CreateAssays < ActiveRecord::Migration
  def self.up
    create_table :assays do |t|
      t.integer :fleet_id
      t.datetime :done_on
      t.string :doer
      t.integer :tyres
      t.integer :vehicles
      t.datetime :created_at
      t.datetime :updated_at
      t.string :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :assays
  end
end
