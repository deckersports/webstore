class Sport < ActiveRecord::Base
	has_many :totals
	has_many :store_infos

	def name
	  "#{label}"
	end
end
