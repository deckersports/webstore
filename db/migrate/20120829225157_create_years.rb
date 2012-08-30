class CreateYears < ActiveRecord::Migration
  def self.up
    create_table :years do |t|
      t.string :label

      t.timestamps
    end
    years = ['2005-2006','2006-2007','2007-2008','2008-2009','2009-2010','2010-2011','2011-2012']
    for year in years
        Year.create(:label=>year)
    end
  end

  def self.down
    drop_table :years
  end
end
