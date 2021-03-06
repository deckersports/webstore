class Total < ActiveRecord::Base
  attr_accessible :salesman_id, :store_id, :year_id, :date, :school_id, :sport_id, :season_id, :gross

  #accepts_nested_attributes_for :salesman

  belongs_to :salesman
  belongs_to :store
  belongs_to :year
  belongs_to :school
  belongs_to :sport
  belongs_to :season
  
end
