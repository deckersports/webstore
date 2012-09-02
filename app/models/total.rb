class Total < ActiveRecord::Base
  attr_accessible :salesman_id, :webstore_id, :year_id, :date, :school_id, :sport_id, :total

  #accepts_nested_attributes_for :salesman

  belongs_to :salesman
  # belongs_to :webstore
  belongs_to :year
  belongs_to :school
  belongs_to :sport
  
end
