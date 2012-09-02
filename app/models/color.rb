class Color < ActiveRecord::Base
  attr_accessible :label, :abbr, :white_text, :hex

  	def to_label
	  "#{label}"
	end
end
