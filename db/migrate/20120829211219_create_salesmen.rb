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

    Salesman.create(:abbr => 'ak', :first_name => 'Al', :last_name => 'Koehler', :email => 'ak_deckers@yahoo.com', :phone => '641-425-0373', :active => true)
    Salesman.create(:abbr => 'bc', :first_name => 'Barry', :last_name => 'Cory', :email => 'bc_deckers@yahoo.com', :phone => '641-430-4975', :active => true)
    Salesman.create(:abbr => 'ce', :first_name => 'Cal', :last_name => 'Eilers', :email => 'eilerscal@msn.com', :phone => '515-491-8907', :active => true)
    Salesman.create(:abbr => 'dl', :first_name => 'Denny', :last_name => 'Lokken', :email => 'ddmlok@msn.com', :phone => '712-269-2668', :active => true)
    Salesman.create(:abbr => 'ja', :first_name => 'Jim', :last_name => 'Alberts', :email => 'jalberts@mchsi.com', :phone => '319-560-4063', :active => true)
    Salesman.create(:abbr => 'kk', :first_name => 'Kraig', :last_name => 'Kitt', :email => 'sales@somethingunique.com', :phone => '712-263-9538', :active => true)
    Salesman.create(:abbr => 'mp', :first_name => 'Mike', :last_name => 'Pederson', :email => 'mp_deckers@yahoo.com', :phone => '641-583-0378', :active => true)
    Salesman.create(:abbr => 'pp', :first_name => 'Pete', :last_name => 'Peterson', :email => 'refmanpete@aol.com', :phone => '515-577-9597', :active => true)
    Salesman.create(:abbr => 'sl', :first_name => 'Shawn', :last_name => 'Larmore', :email => 'shawnlarmore@hotmail.com', :phone => '319-269-9882', :active => true)
    Salesman.create(:abbr => 'tt', :first_name => 'Tjeran', :last_name => 'Thorson', :email => nil, :phone => nil, :active => false)

  end


  def self.down
    drop_table :salesmen
  end
end
