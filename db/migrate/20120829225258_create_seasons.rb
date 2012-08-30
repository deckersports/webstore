class CreateSeasons < ActiveRecord::Migration
  def self.up
    create_table :seasons do |t|
      t.string :label

      t.timestamps
    end
    seasons = ['Spring','Summer','Fall', 'Winter']
    for season in seasons
        Season.create(:label=>season)
    end
  end

  def self.down
    drop_table :seasons
  end
end