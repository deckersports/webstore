class Year < ActiveRecord::Base
	has_many :totals


	def name
	  "#{label}"
	end
end