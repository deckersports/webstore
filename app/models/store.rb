class Store < ActiveRecord::Base
  attr_accessible :ship_cost_school, :ship_cost_home, :contact_name, :contact_email, :school_credit, :seller_credit, :notes, :sport_id, :season_id, :school_id, :salesman_id, :status_id
end
