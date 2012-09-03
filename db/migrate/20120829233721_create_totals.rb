class CreateTotals < ActiveRecord::Migration
  def self.up
    create_table :totals do |t|
      t.integer :salesman_id
      t.integer :store_id
      t.integer :year_id
      t.date :date
      t.integer :school_id
      t.integer :sport_id
      t.integer :season_id
      t.decimal :total, scale: 2
      t.timestamps
    end
  end

  def self.down
    drop_table :totals
  end
end
