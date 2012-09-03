class CreateShippings < ActiveRecord::Migration
  def self.up  	
    create_table :shippings do |t|
      t.string :label
      t.boolean :to_home
      t.boolean :to_school
		t.timestamps
    end

    Shipping.create(:label => 'Ship to Customer', :to_home => 'true', :to_school => 'false')
    Shipping.create(:label => 'Ship to School/Club', :to_home => 'false', :to_school => 'true')
    Shipping.create(:label => 'Customer Chooses', :to_home => 'true', :to_school => 'true')
    Shipping.create(:label => 'Don\'t Ship', :to_home => 'false', :to_school => 'false')

  end

  def self.down
    drop_table :shippings
  end
end
