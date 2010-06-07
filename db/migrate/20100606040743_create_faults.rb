class CreateFaults < ActiveRecord::Migration
  def self.up
    create_table :faults do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :faults
  end
end
