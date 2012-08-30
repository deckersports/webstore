class CreateSports < ActiveRecord::Migration
  def self.up
    create_table :sports do |t|
      t.string :label
      t.string :abbr

      t.timestamps
    end
    Sport.create(:label => 'Football', :abbr => 'fb')
    Sport.create(:label => 'Volleyball', :abbr => 'vb')
    Sport.create(:label => 'Cross-Country', :abbr => 'cc')
    Sport.create(:label => 'Wrestling', :abbr => 'wr')
    Sport.create(:label => 'Swimming', :abbr => 'sw')
    Sport.create(:label => 'Gymnastics', :abbr => 'gy')
    Sport.create(:label => 'Golf', :abbr => 'gf')
    Sport.create(:label => 'Tennis', :abbr => 'te')
    Sport.create(:label => 'Soccer', :abbr => 'so')
    Sport.create(:label => 'Track & Field', :abbr => 'tf')
    Sport.create(:label => 'Baseball', :abbr => 'ba')
    Sport.create(:label => 'Softball', :abbr => 'sb')
    Sport.create(:label => 'Basketball', :abbr => 'bb')
  end

  def self.down
    drop_table :sports
  end
end
