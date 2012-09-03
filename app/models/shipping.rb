class Shipping < ActiveRecord::Base
	has_many :store_infos
	def to_label
	  "#{label}"
	end
end
