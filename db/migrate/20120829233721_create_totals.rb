class CreateTotals < ActiveRecord::Migration
  def self.up
    create_table :totals do |t|
      t.integer :salesman
      t.integer :webstore
      t.integer :year
      t.date :date
      t.integer :school
      t.integer :sport
      t.decimal :total, scale: 2
      t.timestamps
    end
  end

  def self.down
    drop_table :totals
  end
end
