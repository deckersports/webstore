class CreateStoreInstances < ActiveRecord::Migration
  def change
    create_table :store_instances do |t|
      t.integer :store_id
      t.date :req_open
      t.date :req_close
      t.date :open
      t.date :close
      t.string :sales_order
      t.text :notes

      t.timestamps
    end
  end
end
