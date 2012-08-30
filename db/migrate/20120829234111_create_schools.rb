class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :name
      t.string :mascot
      t.integer :pri_color
      t.integer :sec_color
      t.integer :salesman
      t.string :address
      t.string :city
      t.string :zip
      t.string :abbr
      t.timestamps
    end
  end

  def self.down
    drop_table :schools
  end
end
