class Season < ActiveRecord::Base
	has_many :store_infos
	has_many :totals
	def to_label
	  "#{label}"
	end
end
