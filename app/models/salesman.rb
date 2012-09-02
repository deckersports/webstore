class Salesman < ActiveRecord::Base
  attr_accessible :abbr, :first_name, :last_name, :email, :phone, :active
  	
	has_many :totals

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def to_label
    "#{full_name}"
  end

end 
