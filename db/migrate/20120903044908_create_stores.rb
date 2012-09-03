class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.decimal :ship_cost_school, scale: 2
      t.decimal :ship_cost_home, scale: 2
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.boolean :school_credit
      t.boolean :seller_credit
      t.text :notes
      t.integer :sport_id
      t.integer :season_id
      t.integer :school_id
      t.integer :salesman_id
      t.integer :shipping_id
      t.integer :status_id
      t.integer :instance
      t.date :request_open
      t.date :request_close
      t.date :opened
      t.date :closed
      t.date :flier
      t.string :sales_order
      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
