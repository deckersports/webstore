class CreateSalesmen < ActiveRecord::Migration
  def self.up
    create_table :salesmen do |t|
      t.string :abbr
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.boolean :active
      t.timestamps
    end
  end

  def self.down
    drop_table :salesmen
  end
end
