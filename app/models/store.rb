class Store < ActiveRecord::Base
  attr_accessible :ship_cost_school, :ship_cost_home, :contact_first_name, :contact_last_name, :contact_email, :school_credit, :seller_credit, :notes, :sport_id, :season_id, :school_id, :salesman_id, :shipping_id, :instance, :request_open, :request_close, :opened, :closed, :flier, :sales_order

  belongs_to :sport
  belongs_to :season
  belongs_to :school
  belongs_to :salesman
  belongs_to :shipping
  has_one :total

  before_save :default_values
  def default_values
    self.status_id  ||= '1'
  end

  def label
    "#{school.name} #{sport.label}"
  end

  def abbr
    "#{school.abbr}#{sport.abbr}"
  end

  def abbr_year
    "#{abbr}#{instance if instance > 1}#{request_open.strftime("%y")}"
  end

  def to_label
    "#{abbr_year}"
  end
end
