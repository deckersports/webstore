class Year < ActiveRecord::Base
	has_many :totals


	def to_label
	  "#{label}"
	end
end
