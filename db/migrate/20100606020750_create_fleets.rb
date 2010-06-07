class CreateFleets < ActiveRecord::Migration
  def self.up
    create_table :fleets do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :fleets
  end
end
