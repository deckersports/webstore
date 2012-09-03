class Status < ActiveRecord::Base

	def to_label
	  "#{label}"
	end
end
