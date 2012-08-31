class Total < ActiveRecord::Base
  attr_accessible :salesman, :webstore, :year_id, :date, :school, :sport, :total

  belongs_to :year
end
