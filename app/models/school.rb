class School < ActiveRecord::Base
  attr_accessible :name, :mascot, :pri_color, :sec_color, :salesman, :address, :city, :zip, :abbr
end
