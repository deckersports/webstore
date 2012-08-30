class CreateColors < ActiveRecord::Migration
  def self.up
    create_table :colors do |t|
      t.string :label
      t.string :abbr
      t.boolean :white_text
      t.string :hex
      t.timestamps
    end
  end

  def self.down
    drop_table :colors
  end
end
