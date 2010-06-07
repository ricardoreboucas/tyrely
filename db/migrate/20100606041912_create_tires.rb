class CreateTires < ActiveRecord::Migration
  def self.up
    create_table :tires do |t|
      t.integer :fleet_id
      t.integer :assay_id
      t.string :kind
      t.string :tag
      t.string :brand
      t.string :model
      t.string :size
      t.integer :times
      t.decimal :furrow
      t.string :dot
      t.integer :fault_id
      t.integer :cause_id
      t.string :comment
      t.string :plate
      t.decimal :pression
      t.string :position
      t.decimal :odometer
      t.string :reformer
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :tires
  end
end
