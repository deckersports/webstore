class School < ActiveRecord::Base
  attr_accessible :name, :mascot, :pri_color, :sec_color, :salesman, :address, :city, :zip, :abbr

	has_many :store_infos
	has_many :totals
  def to_label
    "#{name}"
  end

end
